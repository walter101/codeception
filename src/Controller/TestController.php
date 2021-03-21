<?php

namespace App\Controller;

use App\Service\PersonService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TestController extends AbstractController
{
    /** @var PersonService */
    private $personService;

    public function __construct(PersonService $personService)
    {
        $this->personService = $personService;
    }

    /**
     * @Route("/start", name="start")
     */
    public function start()
    {
        $this->personService->addPerson();

        return new Response('Person is added ... Person not added? abcd');
    }

    /**
     * @Route("/postdata")
     * @param Request $request
     * @return Response
     */
    public function testPostData(Request $request)
    {
        if ($request->request->get('username') !== null) {
            return new Response('We have _post data');
        }

        return new Response('We have no _post data');
    }

    /**
     * @Route("/getdata")
     * @param Request $request
     * @return Response
     */
    public function testGetData(Request $request)
    {
        if ($request->query->get('username') !== null) {
            return new Response('We have _GET data');
        }

        return new Response('We have no _GET data');
    }

    /**
     * @Route("/api/v1")
     * @return Response
     */
    public function soapTest()
    {
        return new Response('We have SOAP request');
    }
}