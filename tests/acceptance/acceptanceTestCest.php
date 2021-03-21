<?php
namespace App\Tests\acceptance;
use App\Tests\AcceptanceTester;

class acceptanceTestCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    // tests
    public function tryToTest(AcceptanceTester $I)
    {
    }

    public function frontpageWorks(AcceptanceTester $I)
    {
        $I->amOnPage('/start');
        $I->see('Person is added');
        $I->see('abcd');
    }
}
