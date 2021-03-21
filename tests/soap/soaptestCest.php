<?php namespace App\Tests\soap;
use App\Tests\Helper\Soap;
use App\Tests\SoapTester;
use Codeception\Lib\DbPopulator;
use Codeception\Module\Db;

class soaptestCest
{
    public function _before(SoapTester $I, Soap $soapModule)
    {
        // Setnamespace
        $soapModule->configure();

        // De array is een database config met db name, user en pass etc
        $test = new DbPopulator([]);

        // Laad de test eens lopen met break points in DbPopulator, wellicht dat duidelijk wordt hoe ik in een dump kan inschieten
        // de config bepaald de user, pass en waar de dump staat, dus die moet ik ook kunnen zetten
        //$test->

        $test = new \Codeception\Lib\Driver\Db('mysql:host=mysql:3306;dbname=testdatabase', 'root', 'root');

        $filename = 'tests/dumps/dumpOnTheFly.sql';

        $lines = file($filename, FILE_IGNORE_NEW_LINES);
        $test->load($lines);

    }

    // tests
    public function tryToTest(SoapTester $I)
    {
        $I->haveSoapHeader('Bearer', ['username' => 'walter_username', 'pass' => 'walter_pass']);
        $I->sendSoapRequest('createUser', '

                <Documenten>
                  <BrAlg>
                    <BrCd>00500</BrCd>
                    <VnrBrCd>00002</VnrBrCd>
                    <AandatBr>2019-06-13</AandatBr>
                    <AantijdBr>11:44:51</AantijdBr>
                    <IdInzndr>ARBOBUTLER_PA</IdInzndr>
                    <IdOntvngr>UNIT4</IdOntvngr>
                    <Berrefnr>db2@124</Berrefnr>
                    <TestJN>J</TestJN>
                    <OntvngstbevJN>J</OntvngstbevJN>
                  </BrAlg>
                  <Wrkgvr>
                    <HndlsnmOrg>Pothof Enterprise B.V.</HndlsnmOrg>
                    <IdWrkgvrArbdnst>pothofenterprise</IdWrkgvrArbdnst>
                    <AansltnrGeguitwlngArbdnst></AansltnrGeguitwlngArbdnst>
                    <Lhnr>a</Lhnr>
                  </Wrkgvr>
                  <CntprsnZender>
                    <Achternaam>Pothof Manager app</Achternaam>
                    <Voorl>W</Voorl>
                    <Roepnaam>Walter</Roepnaam>
                    <GslchtCd>M</GslchtCd>
                    <Com>
                      <SrtComCd>01</SrtComCd>
                      <NrCom>0000000000</NrCom>
                    </Com>
                  </CntprsnZender>
                  <Document>
                    <VrwrkCd>02</VrwrkCd>
                    <IdDocument>db2@1243270</IdDocument>
                    <DatDocument>2019-06-13</DatDocument>
                    <SrtDocumentCd>999</SrtDocumentCd>
                    <SrtDocumentOms>Document</SrtDocumentOms>
                    <KenmerkZendPartij>db2@124</KenmerkZendPartij>
                    <BestandTypCd>06</BestandTypCd>
                    <Bestandsnm>htdossier_test.pdf</Bestandsnm>
                    <Datastring>test</Datastring>
                    <Wrknmr>
                      <IdWrknmr>bec01bcc-30b9-11eb-8f0b-625d217b51d6</IdWrknmr>
                    </Wrknmr>
                    <Dnstvbnd>
                      <Vrzm>
                        <VrzmgvlId>123</VrzmgvlId>
                        <DatEerstVrzmdg>2021-02-05</DatEerstVrzmdg>
                      </Vrzm>
                    </Dnstvbnd>
                  </Document>
                </Documenten>

        ');

    }
}
