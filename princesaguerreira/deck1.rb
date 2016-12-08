require 'squib'

Squib::Deck.new(cards: 20, layout: 'hand.yml') do
  background color: '#ffffff'
  rect layout: 'cut'
#  rect layout: 'safe'
  deck = csv file: 'cartas1.csv'

  svg file: deck['arte'], x: 150, y: 250
  text str: deck['carta'], x: 290, y: 50,
  font: 'Arial, Sans 50'
#  set x,y so that title comes out at the top

  text str: deck['atributo'],
  font: 'Arial, Sans 180',
  x: 300, y: 850

  save_png prefix: 'cartas1_'
  save_pdf file: 'cartas1_frente.pdf', trim: 37.5
end
