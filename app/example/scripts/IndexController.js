angular
  .module('example')
  .controller("IndexController", function ($scope, Example, supersonic) {
    $scope.examples = null;
    $scope.showSpinner = true;

    Example.all().whenChanged( function (examples) {
        $scope.$apply( function () {
          $scope.examples = examples;
          $scope.showSpinner = false;
        });
    });
  });