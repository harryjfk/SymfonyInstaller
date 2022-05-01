 public function loginAction()
    {
     //   $request = $this->get('request');
     //   if($request->getMethod()=='POST')
        $errors =array(
            'last_name' => $this->get('request')->getSession()->get(SecurityContext::LAST_USERNAME),
            'error' => $this->get('request')->getSession()->get(SecurityContext::AUTHENTICATION_ERROR),
        ) ;
   //     else
  //$errors = array('last_name'=>'','error'=>array('message'=>''));
        return $this->render('OnTheRoadOnTheRoadBundle:Admin:login.html.twig',$errors );
    }

    public function registerAction()
    {
         $form = $this->get('form.factory')->create (new TUserType(), array());
        $request = $this->get('request');
        if($request->getMethod()=='POST')
        {
            $form->bindRequest($request);
            if($form->isValid())
            {
                //
            }

        }
 return $this->render('OnTheRoadOnTheRoadBundle:Admin:register.html.twig',array('form'=>$form->createView()));
    }

    /* public function checkAction()
     {

     }*/
    public function logoutAction()
    {

    }