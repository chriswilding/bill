angular.module('bill')
.filter('toDate', function() {
  return function(input) {
    return Date.parse(input);
  }
})
