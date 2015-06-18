'use strict'

angular.module('ccApp')
  .controller 'Page5Ctrl', ($scope, $timeout) ->
    # Bind controller data
    do ->
      $scope.text_field1 = {}

      $scope.text_field1.value = '' # default value

      $scope.text_field2 = {}

      $scope.text_field2.value = '' # default value


    # Attach listeners

    $scope.picture_field0Tap = ->
      navigator.camera.getPicture(
        (imageData) ->
        (errorMessage) ->
      )

    $scope.card_with_image_on_left_two_text_rows3Tap = ->
      navigator.camera.getPicture(
        (imageData) ->
        (errorMessage) ->
      )

    $scope.card_with_image_on_left_two_text_rows4Tap = ->
      navigator.camera.getPicture(
        (imageData) ->
        (errorMessage) ->
      )

    $scope.card_with_image_on_left_two_text_rows5Tap = ->
      navigator.camera.getPicture(
        (imageData) ->
        (errorMessage) ->
      )

    $scope.button6Tap = ->
      steroids.data
        .resource('recepten')
        .create({ name: $scope.text_field1.value, created_by: "", ingredienten: $scope.text_field2.value, uid: "" })  
        .then(
          (result) ->
            navigator.notification.alert("Recept opgeslagen", (->
              steroids.layers.pop {}
            ), "Recept", "OK!")
          (error) ->
        )


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
