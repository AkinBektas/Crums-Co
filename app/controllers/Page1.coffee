'use strict'

angular.module('ccApp')
  .controller 'Page1Ctrl', ($scope, $timeout) ->
    # Bind controller data
    do ->
      $scope.text_field1 = {}

      $scope.text_field1.value = '' # default value


    # Attach listeners

    $scope.text_field1Tap = ->

    $scope.button3Tap = ->
      steroids.data
        .resource('ingredienten')
        .create({ ingredienten: $scope.text_field1.value })  
        .then(
          (result) ->
            navigator.notification.alert("Ingredient toegevoegd", (->
              Page1WebView = new steroids.views.WebView 'views/Page1/index.html'
              steroids.layers.push { view: Page1WebView }
            ), "Ingredient", "OK!")
          (error) ->
        )

    $scope.list2ListTap = ->
      do ([item] = arguments) ->
        queryString = '?uid=' + item['uid']
        Page6WebView = new steroids.views.WebView 'views/Page6/index.html' + queryString
        steroids.layers.push { view: Page6WebView }

    $scope.button4Tap = ->
      Page8WebView = new steroids.views.WebView 'views/Page8/index.html'
      steroids.layers.push { view: Page8WebView }


    # Initialize controller
    do ->
      steroids.data.reactive.whenVisible.onValue ->
        steroids.data.resource('ingredienten')
          .findAll({  })
          .then (result) ->
            $scope.$apply ->
              $scope['ingredienten'] = result

      steroids.view.navigationBar.show ' '
