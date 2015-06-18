'use strict'

angular.module('ccApp')
  .controller 'Page8Ctrl', ($scope, $timeout) ->
    # Bind controller data
    do ->

    # Attach listeners

    $scope.card_with_image_on_left_two_text_rows3Tap = ->


    # Initialize controller
    do ->
      steroids.data.reactive.whenVisible.onValue ->
        steroids.data.resource('recepten')
          .findAll({  })
          .then(_.sample)
          .then (result) ->
            $scope.$apply ->
              $scope['recepten'] = result

      steroids.view.navigationBar.show ' '
