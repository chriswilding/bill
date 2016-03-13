angular.module('bill')
.controller('BillCtrl', ['$http', '$scope', function($http, $scope) {
  $http.get('api/bills/1')
    .success(function(data) {
      $scope.bill = data;
    });
}])
.directive('bill', function() {
  return {
    controller: 'BillCtrl',
    replace: true,
    restrict: 'E',
    templateUrl: 'bill_template.html'
  }
});
