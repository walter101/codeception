<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class ApiEndpointController extends AbstractController
{

    /**
     * @Route("/api/body/endpoint", methods={"POST"})
     */
    public function getBodyFromApiEndpoint(Request $request)
    {
        // Get the body from the request
        $body = $request->getContent();

        // Jsondecode the body
        $bodyDecoded = json_decode($body);

        // Get a property from the stdClass
        $firstName = $bodyDecoded->firstName;

        // Return statusCode and a status string
        return new JsonResponse('api endPoint success', 200);
    }
}