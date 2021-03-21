<?php
namespace App\Tests\Helper;

// here you can define custom actions
// all public methods declared in helper class will be available in $I

class Soap extends \Codeception\Module
{
    public function configure(): void
    {
        $this->getModule('SOAP')->_reconfigure(['schema' => 'YourNamespace']);
    }
}
