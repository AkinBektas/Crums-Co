angular
  .module('ingredienten')
  .controller("ShowController", function ($scope, Ingredienten, supersonic) {
    $scope.ingredienten = null;
    $scope.showSpinner = true;
    $scope.dataId = undefined;

    var _refreshViewData = function () {
      Ingredienten.find($scope.dataId).then( function (ingredienten) {
        $scope.$apply( function () {
          $scope.ingredienten = ingredienten;
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
      $scope.ingredienten.delete().then( function () {
        supersonic.ui.layers.pop();
      });
    }
  });