about_module = angular.module '{{app_name}}.about', [
  'ui.router',
  'placeholders',
  'ui.bootstrap'
]

about_module.config ['$stateProvider', ($stateProvider) ->
  $stateProvider.state 'about', {
    url: '/about'
    views: {
      "main": {
        controller: 'AboutCtrl'
        templateUrl: 'about/about.tpl.html'
      }
    }
    data: { pageTitle: 'What is It?' }
  }
  return
]

about_module.controller 'AboutCtrl', [ '$scope', ($scope) ->
   $scope.dropdownDemoItems = [
     "The first choice!"
     "And another choice for you."
     "but wait! A third!"
   ]
   return
]