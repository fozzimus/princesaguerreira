require 'squib'

Squib::Deck.new(cards: 20) do
  background color: '#919191'
  rect layout: 'cut'
#  rect layout: 'safe'
  deck = csv file: 'cartas1.csv'
  svg file: deck['arte']

  %w(carta).each do |key|
    text str: deck[key]
    svg file: "#{key.downcase}.svg"
    text str: deck[key]
  end

  save_png prefix: 'cartas1_'
  save_pdf file: 'cartas1_frente.pdf', trim: 37.5
  showcase file: 'showcase_cartas1.png', fill_color: '#0000'
  hand file: 'hand_cartas1.png', trim: 37.5, trim_radius: 25, fill_color: '#0000'
end
