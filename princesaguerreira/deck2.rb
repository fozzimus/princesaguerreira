require 'squib'

Squib::Deck.new(cards: 32, layout 'hand.yml') do
  background color: '#ffffff'
  rect layout: 'cut'
#  rect layout: 'safe'
  deck = csv file: 'cartas2.csv'
  svg file: deck['arte']

  %w('carta').each do |key|
    text str: deck[key]
    font: Arial, Sans 50
    align: center
    svg file: "#{key.downcase}.svg"
    text str: deck[key]
  end

  save_png prefix: 'cartas2_'
  save_pdf file: 'cartas2_frente-tras.pdf', trim: 37.5
  showcase file: 'showcase_cartas2.png', fill_color: '#000000'
  hand file: 'hand_cartas2.png', trim: 37.5, trim_radius: 25, fill_color: '#000000'
end
