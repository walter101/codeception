<?php

namespace App\Controller;

use phpDocumentor\Reflection\Types\Integer;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ApiController extends AbstractController
{

    private $fakeData = [

        [
            'id' => 1,
            'firstName' => 'Cammi',
            'lastName' => 'Ardling',
            'email' => 'cardling0@alibaba.com',
            'gender' => 'Female'
        ],
        [
            'id' => 1,
            'firstName' => 'Kenn',
            'lastName' => 'Reide',
            'email' => 'kreide1@live.com',
            'gender' => 'Male'
        ],
        [
            'id' => 1,
            'firstName' => 'Blinnie',
            'lastName' => 'Beauly',
            'email' => 'bbeauly2@angelfire.com',
            'gender' => 'Female'
        ],
        [
            'id' => 1,
            'firstName' => 'Parnell',
            'lastName' => 'Daysh',
            'email' => 'pdaysh3@state.tx.us',
            'gender' => 'Male'
        ]
    ];

    /**
     * @Route("/api/double_int", name="api", methods={"GET"})
     */
    public function index()
    {
        $returnArray = [
            'firstname' => 'Walter',
            'lastname' => 'Pothof'
        ];
        return new JsonResponse(
            ($returnArray)
        );
    }

    /**
     * @Route("/api/from_array/{id}", methods={"GET", "POST"})
     * @param Integer $index
     */
    public function getFromArray(int $id)
    {
        if($id > count($this->fakeData)-1) {
            $error = ['error' => 'There is no '.($id-1).' as index in the used array.'];
            // Return response (array converted to json)
            $response = new Response(json_encode($error));
            $response->headers->set('Content-Type', 'application/json');
            $response->setStatusCode(Response::HTTP_NOT_FOUND);
            return $response;
        }

        // Return response (array converted to json)
        $response = new Response(json_encode($this->fakeData[$id]));
        $response->headers->set('Content-Type', 'application/json');
        return $response;

        //return new JsonResponse(json_encode($this->fakeData[$id]));
    }
}
