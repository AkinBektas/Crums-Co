angular
  .module('ingredienten')
  .controller("EditController", function ($scope, Ingredienten, supersonic) {
    $scope.ingredienten = null;
    $scope.showSpinner = true;

    // Fetch an object based on id from the database
    Ingredienten.find(steroids.view.params.id).then( function (ingredienten) {
      $scope.$apply(function() {
        $scope.ingredienten = ingredienten;
        $scope.showSpinner = false;
      });
    });

    $scope.submitForm = function() {
      $scope.showSpinner = true;
      $scope.ingredienten.save().then( function () {
        supersonic.ui.modal.hide();
      });
    }

    $scope.cancel = function () {
      supersonic.ui.modal.hide();
    }

  });
