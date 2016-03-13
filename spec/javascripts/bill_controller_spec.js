describe('BillCtrl', function() {
  beforeEach(module('bill'));

  var scope;
  var response = {
    statement: {
      generated: '2015-01-11',
      due: '2015-01-25',
      period: {
        from: '2015-01-26',
        to: '2015-02-25'
      }
    }
  }

  beforeEach(inject(function(_$httpBackend_, $rootScope, $controller) {
    $httpBackend = _$httpBackend_;
    $httpBackend.expectGET('api/bills/1').respond(response);
    scope = $rootScope.$new();
    controller = $controller('BillCtrl', { $scope: scope });
  }));

  it('assigns the JSON API response to the scope', function() {
    expect(scope.bill).toBeUndefined();

    $httpBackend.flush();

    expect(scope.bill).toEqual(response);
  });
});
