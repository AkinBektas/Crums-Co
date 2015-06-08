angular
  .module('ingredienten')
  .controller("NewController", function ($scope, Ingredienten, supersonic) {
    $scope.ingredienten = {};

    $scope.submitForm = function () {
      $scope.showSpinner = true;
      newingredienten = new Ingredienten($scope.ingredienten);
      newingredienten.save().then( function () {
        supersonic.ui.modal.hide();
      });
    };

    $scope.cancel = function () {
      supersonic.ui.modal.hide();
    }

  });