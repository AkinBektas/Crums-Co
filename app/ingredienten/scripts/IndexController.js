angular
  .module('ingredienten')
  .controller("IndexController", function ($scope, Ingredienten, supersonic) {
    $scope.ingredientens = null;
    $scope.showSpinner = true;

    Ingredienten.all().whenChanged( function (ingredientens) {
        $scope.$apply( function () {
          $scope.ingredientens = ingredientens;
          $scope.showSpinner = false;
        });
    });
  });