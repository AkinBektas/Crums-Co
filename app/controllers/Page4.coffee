'use strict'

angular.module('ccApp')
  .controller 'Page4Ctrl', ($scope, $timeout) ->
    # Bind controller data
    do ->

    # Attach listeners

    $scope.picture_field0Tap = ->

    $scope.card_with_image_on_left_two_text_rows3Tap = ->
      steroids.data
        .resource('recepten')
        .find($scope.recepten.stap1.url)  
        .then(
          (result) ->
            Page7WebView = new steroids.views.WebView 'views/Page7/index.html'
            steroids.modal.show { view: Page7WebView }
          (error) ->
        )

    $scope.card_with_image_on_left_two_text_rows4Tap = ->

    $scope.card_with_image_on_left_two_text_rows5Tap = ->


    # Initialize controller
    do ->
      steroids.data.reactive.whenVisible.onValue ->
        steroids.data.resource('recepten')
          .findAll({  })
          .then((results) -> do (id = steroids.view.params['uid']) ->
            for result in results
              if id is result['uid']
                return result
          )
          .then (result) ->
            $scope.$apply ->
              $scope['recepten'] = result

      steroids.view.navigationBar.show ' '
