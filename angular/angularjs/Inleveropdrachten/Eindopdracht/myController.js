myApp.controller('customersCtrl', function ($scope, $http) {
    $http.get("database/data.php")
        .then(function (response) {
            $scope.eindopdracht = response.data.records;
            $scope.columns = Object.keys($scope.eindopdracht[0]);
            $scope.reverseOrder = false;
            $scope.sortField = 'Id';
            $scope.btnName = "Insert";


            $scope.sortBy = function (sortField) {
                $scope.reverseOrder = ($scope.sortField === sortField) ? !$scope.reverseOrder : true;
                $scope.sortField = sortField;
            };

        });

    $scope.Insert = function () {
        $http.post( 
            "database/insert.php", {
                'Voornaam': $scope.Voornaam,
                'Achternaam': $scope.Achternaam,
                'Straat': $scope.Straat,
                'Huisnummer': $scope.Huisnummer,
                'Postcode': $scope.Postcode,
                'Woonplaats': $scope.Woonplaats,
                'Telefoonnummer': $scope.Telefoonnummer,
                'btnName': $scope.btnName,

            }

        );
    }

    $scope.delete_data = function (Id) {
        if (confirm("Are you sure you want to delete?")) {
            $http.post("database/delete.php", {
                'Id': Id
            })
        }
    }

    $scope.Update = function(Id, Voornaam, Achternaam, Straat, Huisnummer, Postcode, Woonplaats, Telefoonnummer) {
        $http.post( 
            "database/edit.php",)
        $scope.Id = Id;
        $scope.Voornaam = Voornaam;
        $scope.Achternaam = Achternaam;
        $scope.Straat = Straat;
        $scope.Huisnummer = Huisnummer;
        $scope.Postcode = Postcode;
        $scope.Woonplaats = Woonplaats;
        $scope.Telefoonnummer = Telefoonnummer;
        $scope.btnName = "Update";
    }


});