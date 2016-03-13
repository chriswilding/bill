angular.module('bill')
.controller('BillCtrl', ['$scope', function($scope) {
}])
.directive('bill', function() {
  return {
    controller: 'BillCtrl',
    replace: true,
    restrict: 'E',
    templateUrl: 'bill_template.html'
  }
});
