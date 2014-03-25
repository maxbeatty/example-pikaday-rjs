require [
  'moment'
  'pikaday'
], (moment, Pikaday) ->
  console.log 'moment loaded', moment.version

  p = new Pikaday
    field: document.getElementById('datepicker')
    onSelect: -> console.log @getMoment().format('Do MMMM YYYY')

  console.log 'pikaday loaded', p
