ready = ->
  Typed.new '.element',
    strings: [
      'Software development is my passion!'
      'And the development process should never be a secret!'
      'With every project I take on, I make it my goal to deliver well crafted products every time and to ensure that all production stages are expounded with clear and complete communication.'
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready