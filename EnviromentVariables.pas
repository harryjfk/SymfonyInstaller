unit EnviromentVariables;

interface

uses Classes, SySUtils, Windows;

type
  TJFKEnviromentVars = class
    class function GetEnvVarValue(const VarName: string): string;
    class function SetEnvVarValue(const VarName, VarValue: string): Integer;
    class function GetAllEnvVars(const Vars: TStrings): Integer;
    class function ExpandEnvVars(const Str: string): string;
    class function CreateEnvBlock(const NewEnv: TStrings;
      const IncludeCurrent: Boolean; const Buffer: Pointer;
      const BufSize: Integer): Integer;
     class function DeleteEnvVar(const VarName: string): Integer;

    class function ExecProg(const ProgName: string; EnvBlock: Pointer): Boolean;
  end;

implementation

class function TJFKEnviromentVars.GetEnvVarValue(const VarName: string): string;

var
  BufSize: Integer; // buffer size required for value

begin
  // Get required buffer size (inc. terminal #0)
  BufSize := GetEnvironmentVariable(PChar(VarName), nil, 0);
  if BufSize > 0 then
  begin
    // Read env var value into result string
    SetLength(Result, BufSize - 1);
    GetEnvironmentVariable(PChar(VarName), PChar(Result), BufSize);
  end
  else
    // No such environment variable
    Result := '';
end;

class function TJFKEnviromentVars.SetEnvVarValue(const VarName,
  VarValue: string): Integer;
begin
  // Simply call API function
  if SetEnvironmentVariable(PChar(VarName), PChar(VarValue)) then
    Result := 0
  else
    Result := GetLastError;
end;

class function TJFKEnviromentVars.DeleteEnvVar(const VarName: string): Integer;
begin
  if SetEnvironmentVariable(PChar(VarName), nil) then
    Result := 0
  else
    Result := GetLastError;
end;

class function TJFKEnviromentVars.GetAllEnvVars(const Vars: TStrings): Integer;
var
  PEnvVars: PChar; // pointer to start of environment block
  PEnvEntry: PChar; // pointer to an env string in block
begin
  // Clear the list
  if Assigned(Vars) then
    Vars.Clear;
  // Get reference to environment block for this process
  PEnvVars := GetEnvironmentStrings;
  if PEnvVars <> nil then
  begin
    // We have a block: extract strings from it
    // Env strings are #0 separated and list ends with #0#0
    PEnvEntry := PEnvVars;
    try
      while PEnvEntry^ <> #0 do
      begin
        if Assigned(Vars) then
          Vars.Add(PEnvEntry);
        Inc(PEnvEntry, StrLen(PEnvEntry) + 1);
      end;
      // Calculate length of block
      Result := (PEnvEntry - PEnvVars) + 1;
    finally
      // Dispose of the memory block
      Windows.FreeEnvironmentStrings(PEnvVars);
    end;
  end
  else
    // No block => zero length
    Result := 0;
end;

class function TJFKEnviromentVars.ExpandEnvVars(const Str: string): string;
var
  BufSize: Integer; // size of expanded string
begin
  // Get required buffer size
  BufSize := ExpandEnvironmentStrings(PChar(Str), nil, 0);
  if BufSize > 0 then
  begin
    // Read expanded string into result string
    SetLength(Result, BufSize - 1);
    ExpandEnvironmentStrings(PChar(Str), PChar(Result), BufSize);
  end
  else
    // Trying to expand empty string
    Result := '';
end;

class function TJFKEnviromentVars.CreateEnvBlock(const NewEnv: TStrings;
  const IncludeCurrent: Boolean; const Buffer: Pointer;
  const BufSize: Integer): Integer;
var
  EnvVars: TStringList; // env vars in new block
  Idx: Integer; // loops thru env vars
  PBuf: PChar; // start env var entry in block
begin
  // String list for new environment vars
  EnvVars := TStringList.Create;
  try
    // include current block if required
    if IncludeCurrent then
      GetAllEnvVars(EnvVars);
    // store given environment vars in list
    if Assigned(NewEnv) then
      EnvVars.AddStrings(NewEnv);
    // Calculate size of new environment block
    Result := 0;
    for Idx := 0 to Pred(EnvVars.Count) do
      Inc(Result, Length(EnvVars[Idx]) + 1);
    Inc(Result);
    // Create block if buffer large enough
    if (Buffer <> nil) and (BufSize >= Result) then
    begin
      // new environment blocks are always sorted
      EnvVars.Sorted := True;
      // do the copying
      PBuf := Buffer;
      for Idx := 0 to Pred(EnvVars.Count) do
      begin
        StrPCopy(PBuf, EnvVars[Idx]);
        Inc(PBuf, Length(EnvVars[Idx]) + 1);
      end;
      // terminate block with additional #0
      PBuf^ := #0;
    end;
  finally
    EnvVars.Free;
  end;
end;

class function TJFKEnviromentVars.ExecProg(const ProgName: string;
  EnvBlock: Pointer): Boolean;
{ Creates new process for given program passing any given environment block }
var
  SI: TStartupInfo; // start up info
  PI: TProcessInformation; // process info
  CreateFlags: DWORD; // process creation flags
  SafeProgName: string; // program name: safe for CreateProcessW
begin
  // Make ProgName parameter safe for passing to CreateProcessW
  SafeProgName := ProgName;
  UniqueString(SafeProgName);
  // Set up startup info record: all default values
  FillChar(SI, SizeOf(SI), 0);
  SI.cb := SizeOf(SI);
  // Set up creation flags: special flag required for unicode
  // environments, which is want when unicode support is enabled.
  // NOTE: we are assuming that the environment block is in Unicode
  // on Delphi 2009 or later. CreateProcessW does permits it to be
  // ANSI, but we don't support that
{$IFDEF UNICODE}
  CreateFlags := CREATE_UNICODE_ENVIRONMENT; // passing a unicode env
{$ELSE}
  CreateFlags := 0;
{$ENDIF}
  // Execute the program
  Result := CreateProcess(nil, PChar(SafeProgName), nil, nil, True, CreateFlags,
    EnvBlock, nil, SI, PI);
end;

end.
