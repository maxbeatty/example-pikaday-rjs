require(['moment', 'pikaday'], function(moment, Pikaday) {
  var p;
  console.log('moment loaded', moment.version);
  p = new Pikaday({
    field: document.getElementByid('datepicker'),
    onSelect: function() {
      return console.log(this.getMoment().format('Do MMMM YYYY'));
    }
  });
  return console.log('pikaday loaded', p);
});
