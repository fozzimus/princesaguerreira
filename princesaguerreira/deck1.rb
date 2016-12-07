require 'squib'

Squib::Deck.new(cards: 20, layout: 'hand.yml') do
  background color: '#ffffff'
  rect layout: 'cut'
#  rect layout: 'safe'
  deck = csv file: 'cartas1.csv'

  svg file: deck['arte'], x: 150, y: 250
#  text str: deck['carta']
#  set x,y so that title comes out at the top

  text str: deck['atributo'],
  x: 380, y: 850
#  font: Arial, Sans 36
#  que caralha que não funciona

  save_png prefix: 'cartas1_'
  save_pdf file: 'cartas1_frente.pdf', trim: 37.5
end
