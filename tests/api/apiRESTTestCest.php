<?php
namespace App\Tests\api;
use App\Tests\ApiTester;

class apiRESTTestCest
{
    public function _before(ApiTester $I)
    {
    }

    public function registerTest(ApiTester $I)
    {
        /**
         * Send a POST request to route '/register'
         * The $_POST contains the mandatory key/values to create a new user and person entity
         * Last: validation that user was successfully created
         */
        $I->sendPOST('/register', [
            'firstname' => 'walter',
            'lastname' => 'pothof',
            'streetname' => 'Donaudal',
            'streetnumber' => '67',
            'zipcode' => '7007hc',
            'email' => 'walterpothof@gmail.com',
            'password' => 'test',
            '_csrf_token' => 'xg0gK-wYUM9eUCa4hfJ_jgMOnkW2arvR7EY-6HkvCzE',
        ]);

        // Check the HTTP response code
        $I->seeResponseCodeIs(\Codeception\Util\HttpCode::OK);

        // check if registration was successful
        $I->seeResponseContains('Registratie succevol!');

        // check if the user was created in the database
        $I->seeInDatabase('user', ['email' => 'walterpothof@gmail.com', 'first_name' => 'walter']);
    }

    /**
     * Test REST configuration POST (kan ook met GET)
     * @param \App\Tests\ApiTester $I
     */
    public function RESTPostTest(ApiTester $I)
    {
        $I->amHttpAuthenticated('user', '12345');
        $I->sendPOST('/postdata', [
           'username' => 'walter'
        ]);
        $I->seeResponseCodeIs(\Codeception\Util\HttpCode::OK);
        $I->seeResponseContains('We have _post data');
    }
}
