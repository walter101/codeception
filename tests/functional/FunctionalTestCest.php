<?php
namespace App\Tests\functional;
use App\Tests\FunctionalTester;
use App\Entity\Person;
use Codeception\Module\Db;

class FunctionalTestCest
{
    public function _before(FunctionalTester $I)
    {
    }

    // tests
    public function databaseTest(FunctionalTester $I)
    {
        $I->amOnPage('/start');
        $I->see('Person is added');

        // Symfony check in repository
        #$I->canSeeInRepository(Person::class, ['firstName' => 'walter']);

        # using DB-module
        $I->seeInDatabase('person', ['first_name' => 'walter']);

        $I->seeNumRecords(2, 'person');

        $I->amConnectedToDatabase('DATABASE2_USE_THIS_NAME_IN_YOUR_CODE');
        $I->seeInDatabase('person', ['first_name' => 'tim']);
        $test1 = $I->grabFromDatabase('person', 'last_name', ['first_name' => 'tim']);
        $I->comment('Ik heb (in database `testdatabase`) de record gevonden waar first_name = `tim`: '.$test1);

        $I->amConnectedToDatabase(Db::DEFAULT_DATABASE);
        $I->seeInDatabase('person', ['first_name' => 'walterx']);
        $test2 = $I->grabFromDatabase('person', 'last_name', ['first_name' => 'walterx']);
        $I->comment('Ik heb (in database `codeception`) de record gevonden waar first_name = `walterx`: '.$test2);

        $I->seeNumRecords(2, 'person');
        $I->dontSeeInDatabase('person', ['first_name' => 'piet']);

        // Tijdelijk gedurende deze test een record toevoegen in de database, deze wordt verwijderd na afloop van deze test
        $I->haveInDatabase('person', ['first_name'=>'waltery', 'last_name' => 'pothofy', 'street_name' => 'donaudal', 'street_number' => 67, 'zipcode' => '7007hc', 'gender' => 'male', 'age' => 46]);

        // Update een record in de database (blijft ge-update ook na de test)
        $I->updateInDatabase('person', ['first_name' => 'walterzzz'], ['first_name' => 'walter']);

        $test = 10;
    }
}
