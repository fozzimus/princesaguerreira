require 'squib'

Squib::Deck.new(cards: 20, layout: 'hand.yml') do
  background color: '#ffffff'
  rect layout: 'cut'
#  rect layout: 'safe'
  deck = csv file: 'cartas1.csv'
  svg file: deck['arte'], x: 150, y: 250
#  text str: deck['carta']
  text str: deck['atributo'], x: 150, y: 350

  save_png prefix: 'cartas1_'
  save_pdf file: 'cartas1_frente.pdf', trim: 37.5
end
