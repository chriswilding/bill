describe('toDate filter', function() {
  beforeEach(module('bill'));

  it('should convert an ISO 8601 formatted string to a date', function() {
    inject(function(toDateFilter) {
      // Month param to Date constructor is zero indexed
      var expected = new Date(2016, 2, 14).getTime();
      expect(toDateFilter('2016-03-14')).toEqual(expected);
    });
  });
});
