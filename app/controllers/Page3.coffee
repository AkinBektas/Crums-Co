'use strict'

angular.module('ccApp')
  .controller 'Page3Ctrl', ($scope, $timeout) ->
    # Bind controller data
    do ->
      $scope.checkbox0 = {}

      $scope.checkbox0.value = '' # default value

      $scope.checkbox1 = {}

      $scope.checkbox1.value = '' # default value

      $scope.checkbox2 = {}

      $scope.checkbox2.value = '' # default value

      $scope.checkbox3 = {}

      $scope.checkbox3.value = '' # default value


    # Attach listeners


    # Initialize controller
    do ->
      steroids.view.navigationBar.show ' '
