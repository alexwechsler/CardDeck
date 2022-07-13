# Basic Card Deck Implementation

Hello this project implements a simple deck of cards with a few basic features outlined below. I have also utilized a Strategy pattern for two behaviors namely value and compare which I can forsee varying based on the kind of game that is being played. 

I will simply provide a few usage examples of deck in order to demonstrate usage.
The deck has the following features...
    - DeckofCards.new                   # New Deck
    - DeckofCards.new('BlackJack')      # Create a Deck for BlackJack
    - shuffle                           # Shuffle the Deck
    - deal                              # removes a card from the top
    - add                               # adds a card to the bottom of the deck
    - compare                           # compares 2 cards based on value behavior

start irb
irb(main):001:0> load 'deck_of_cards.rb'
=> true

# Default Deck
irb(main):002:0> deck = DeckofCards.new
=> 
#<DeckofCards:0x00007f23b18b3978
irb(main):004:0> deck.cards.count
=> 52
irb(main):006:0> card = deck.deal
=> #<Card:0x00007f23b18b12e0 @suit="♦", @value="A", @value_system="Default">
irb(main):007:0> card.has_value
=> 14
irb(main):009:0> card_b = deck.cards.first
=> #<Card:0x00007f23b18b3860 @suit="♠", @value=2, @value_system="Default">
irb(main):010:0> deck.compare(card, card_b)
=> 14

# Comparing when a value system is set
irb(main):011:0> blackjack_deck = DeckofCards.new('BlackJack')
=> 
#<DeckofCards:0x00007f23b2138bc0
irb(main):012:0> card_a = blackjack_deck.cards[47]
=> #<Card:0x00007f23b2169900 @suit="♦", @value="K", @value_system="BlackJack">
irb(main):015:0> card_b = blackjack_deck.cards.last
=> #<Card:0x00007f23b2168af0 @suit="♦", @value="A", @value_system="BlackJack">
irb(main):016:0> blackjack_deck.compare(card_a, card_b)
=> 10

# Dealing / Adding a Card
irb(main):017:0> blackjack_deck.cards.count
=> 52                                                                                             
irb(main):018:0> c=blackjack_deck.deal
=> #<Card:0x00007f23b2168af0 @suit="♦", @value="A", @value_system="BlackJack">
irb(main):020:0> blackjack_deck.cards.count
=> 51
irb(main):022:0> blackjack_deck.add c
=> 
[#<Card:0x00007f23b2168af0 @suit="♦", @value="A", @value_system="BlackJack">,             
 #<Card:0x00007f23b21386c0 @suit="♠", @value=2, @value_system="BlackJack"> ...
irb(main):023:0> blackjack_deck.cards.count
=> 52



