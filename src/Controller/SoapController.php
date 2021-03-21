<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Serializer\Serializer;

class SoapController extends AbstractController
{
//    /** @var Serializer */
//    private $serializer;
//
//    /**
//     * @param Serializer $serializer
//     */
//    public function __construct(Serializer $serializer)
//    {
//        $this->serializer = $serializer;
//    }

    /**
     * @Route("/soap/test", name="TEST_SOAP")
     *
     * @param Request $request
     *
     * @return JsonResponse
     */
    public function soapEndpointTest(Request $request)
    {
        $dataString = $request->getContent();

        $XmlString = $this->removeSoapEnvelop($dataString);
        $xml = simplexml_load_string($XmlString);

        return new JsonResponse('jippy jsonresponce', 200);
    }

    private function removeSoapEnvelop(string $dataString)
    {
        $removeOpenSoapEnvelopAndDocumentTag = explode('<Documenten>', $dataString);
        $removeCloseSoapEnvelopAndEndDocumentenTag = explode('</Documenten>', $removeOpenSoapEnvelopAndDocumentTag[1]);

        $xmlString= $removeCloseSoapEnvelopAndEndDocumentenTag[0];

        $wrapXmlStringInTags = '<start>' . $xmlString . '</start>';

        return $wrapXmlStringInTags;
    }
}