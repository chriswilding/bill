describe('BillCtrl', function() {
  beforeEach(module('bill'));

  var $controller;

  beforeEach(inject(function(_$controller_) {
    $controller = _$controller_;
  }));

  it('can initialise the BillCtrl', function() {
    var $scope = {};
    var controller = $controller('BillCtrl', { $scope: $scope });
  });
});
