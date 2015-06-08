angular
  .module('example')
  .controller("NewController", function ($scope, Example, supersonic) {
    $scope.example = {};

    $scope.submitForm = function () {
      $scope.showSpinner = true;
      newexample = new Example($scope.example);
      newexample.save().then( function () {
        supersonic.ui.modal.hide();
      });
    };

    $scope.cancel = function () {
      supersonic.ui.modal.hide();
    }

  });