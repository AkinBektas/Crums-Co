'use strict'

angular.module('ccApp')
  .controller 'Page2Ctrl', ($scope, $timeout) ->
    # Bind controller data
    do ->

    # Attach listeners

    $scope.list3ListTap = ->
      do ([item] = arguments) ->
        queryString = '?uid=' + item['uid']
        Page4WebView = new steroids.views.WebView 'views/Page4/index.html' + queryString
        steroids.layers.push { view: Page4WebView }

    $scope.button2Tap = ->
      Page5WebView = new steroids.views.WebView 'views/Page5/index.html'
      steroids.layers.push { view: Page5WebView }


    # Initialize controller
    do ->
      steroids.data.reactive.whenVisible.onValue ->
        steroids.data.resource('recepten')
          .findAll({  })
          .then (result) ->
            $scope.$apply ->
              $scope['recepten'] = result

      steroids.view.navigationBar.show ' '
