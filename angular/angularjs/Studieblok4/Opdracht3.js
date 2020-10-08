var app = angular.module("myApp", []);
app.controller("myCtrl1", function($scope) {
    $scope.firstName = "John";
  $scope.lastName = "Doe";
});
app.controller("myCtrl2", function($scope) {
    $scope.firstName = "Aaron";
  $scope.lastName = "de Bruin";
});
