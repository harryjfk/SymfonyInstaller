<?php
namespace OnTheRoad\OnTheRoadBundle\Controller;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
class AdminController extends Controller
{
    public function indexAction()
    {
        $em = $this->get('doctrine')->getManager();
        $data = $em->getRepository('ACINOXGMIBundle:TUser')->findAll();
        return $this->render("ACINOXGMIBundle:Admin:index.html.twig",array("data"=>$data));
    }

}
