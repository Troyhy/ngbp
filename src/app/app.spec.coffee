describe "AppCtrl", ->
  describe "isCurrentUrl", ->
    AppCtrl = undefined
    $location = undefined
    $scope = undefined
    beforeEach module("{{ app_name }}")
    beforeEach inject(($controller, _$location_, $rootScope) ->
      $location = _$location_
      $scope = $rootScope.$new()
      AppCtrl = $controller("AppCtrl",
        $location: $location
        $scope: $scope
      )
      return
    )
    it "should pass a dummy test", inject(->
      expect(AppCtrl).toBeTruthy()
      return
    )
    return

  return
