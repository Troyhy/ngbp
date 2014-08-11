app = angular.module "{{ app_name }}", [
  "templates-app"
  "templates-common"
  "{{ app_name }}.home"
  "{{ app_name }}.about"
  "ui.router"
]

app.config ['$stateProvider', '$urlRouterProvider','$interpolateProvider',
  ($stateProvider, $urlRouterProvider, $interpolateProvider) ->
    $urlRouterProvider.otherwise "/home"
    $interpolateProvider.startSymbol('{$')
    $interpolateProvider.endSymbol('$}')
]

app.run(() -> )

app.controller 'AppCtrl', ['$scope', '$location', ($scope, $location) ->
  $scope.test = ['yksi', 'kaksi','kolme']

  $scope.$on "$stateChangeSuccess", (event, toState, toParams,xs
                                     fromState, fromParams) ->
    $scope.pageTitle = toState.data.pageTitle + \
      " | {{ app_name }}"  if angular.isDefined(toState.data.pageTitle)
    return
  return
]
