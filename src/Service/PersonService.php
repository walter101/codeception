<?php

namespace App\Service;

use App\Entity\Person;
use App\Repository\PersonRepository;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;

class PersonService
{
    /** @var EntityManagerInterface */
    private $entityManager;
    /** @var UserRepository */
    private $userRepository;
    /** @var PersonRepository */
    private $personRepository;

    public function __construct(
        EntityManagerInterface $entityManager,
        UserRepository $userRepository,
        PersonRepository $personRepository
    )
    {
        $this->entityManager = $entityManager;
        $this->userRepository = $userRepository;
        $this->personRepository = $personRepository;
    }

    public function addPerson()
    {
        $person = new Person();
        $person->setFirstName('walter');
        $person->setLastName('Pothof');
        $person->setStreetName('Donaudal');
        $person->setStreetNumber(67);
        $person->setZipcode('7007hc');
        $person->setGender('male');
        $person->setAge(46);

        $this->entityManager->persist($person);
        $this->entityManager->flush();
    }
}