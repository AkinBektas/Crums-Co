angular
  .module('example')
  .controller("ShowController", function ($scope, Example, supersonic) {
    $scope.example = null;
    $scope.showSpinner = true;
    $scope.dataId = undefined;

    var _refreshViewData = function () {
      Example.find($scope.dataId).then( function (example) {
        $scope.$apply( function () {
          $scope.example = example;
          $scope.showSpinner = false;
        });
      });
    }

    supersonic.ui.views.current.whenVisible( function () {
      if ( $scope.dataId ) {
        _refreshViewData();
      }
    });

    supersonic.ui.views.current.params.onValue( function (values) {
      $scope.dataId = values.id;
      _refreshViewData();
    });

    $scope.remove = function (id) {
      $scope.showSpinner = true;
      $scope.example.delete().then( function () {
        supersonic.ui.layers.pop();
      });
    }
  });