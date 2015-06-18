'use strict'

angular.module('ccApp')
  .controller 'Page6Ctrl', ($scope, $timeout) ->
    # Bind controller data
    do ->

    # Attach listeners

    $scope.button1Tap = ->
      steroids.data
        .resource('ingredienten')
        .remove($scope.ingredienten.uid)  
        .then(
          (result) ->
            navigator.notification.alert("Ingredient verwijderd", (->
              steroids.layers.pop {}
            ), "Ingredient", "OK!")
          (error) ->
        )

    $scope.button2Tap = ->
      steroids.layers.pop {}


    # Initialize controller
    do ->
      steroids.data.reactive.whenVisible.onValue ->
        steroids.data.resource('ingredienten')
          .findAll({  })
          .then((results) -> do (id = steroids.view.params['uid']) ->
            for result in results
              if id is result['uid']
                return result
          )
          .then (result) ->
            $scope.$apply ->
              $scope['ingredienten'] = result

      steroids.view.navigationBar.show ' '
