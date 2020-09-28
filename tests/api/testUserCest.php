<?php //namespace App\Tests;
use App\Tests\ApiTester;

class testUserCest
{
    public function _before(ApiTester $I)
    {
    }

    /**
     * Test REST configuration POST (kan ook met GET)
     * @param \App\Tests\ApiTester $I
     */
    public function tryToTest(ApiTester $I)
    {
        $I->amHttpAuthenticated('user', '12345');
        $I->sendPOST('/postdata', [
           'username' => 'walter'
        ]);
        $I->seeResponseCodeIs(\Codeception\Util\HttpCode::OK);
        $I->seeResponseContains('We have _post data');
    }
}
