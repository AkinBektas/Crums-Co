angular
  .module('example')
  .controller("EditController", function ($scope, Example, supersonic) {
    $scope.example = null;
    $scope.showSpinner = true;

    // Fetch an object based on id from the database
    Example.find(steroids.view.params.id).then( function (example) {
      $scope.$apply(function() {
        $scope.example = example;
        $scope.showSpinner = false;
      });
    });

    $scope.submitForm = function() {
      $scope.showSpinner = true;
      $scope.example.save().then( function () {
        supersonic.ui.modal.hide();
      });
    }

    $scope.cancel = function () {
      supersonic.ui.modal.hide();
    }

  });
