var myApp = angular.module("myApp", ["ngRoute"]);

myApp.config(function($routeProvider) {
  $routeProvider
  .when("/home", {
    templateUrl : 'folder/home.htm'
  })
  .when("/hobby", {
    templateUrl : 'folder/hobby.htm'
  })
  .when("/overmij", {
    templateUrl : 'folder/overmij.htm'
  });
});
