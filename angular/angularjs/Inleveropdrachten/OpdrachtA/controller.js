app.controller('myController', function ($scope) {

    // Defineer data voor de table
    $scope.personArray = [{
        'Voornaam': 'Aaron',
        'Achternaam': 'de Bruin',
        'Adres': 'de Kring',
        'Huisnummer': '1a',
        'Postcode': '7891TE',
        'Woonplaats': 'Klazienaveen',
        'Emailadres': '122994@student.drenthecollege.nl'

    }];

    // Pak de value van de input en zet ze in een nieuwe row.
    $scope.addRow = function () {

        var person = [];
        person.Voornaam = $scope.Voornaam;
        person.Achternaam = $scope.Achternaam;
        person.Adres = $scope.Adres;
        person.Huisnummer = $scope.Huisnummer;
        person.Postcode = $scope.Postcode;
        person.Woonplaats = $scope.Woonplaats;
        person.Emailadres = $scope.Emailadres;

        $scope.personArray.push(person);


    };
});