class DeckofCards
    require_relative 'compare_behavior'
    require_relative 'card'
    attr_accessor :cards

    include CompareBehavior

    @cards

    def shuffle
        @cards.length.times do
            random_idx = rand(@cards.length)
            random_card = @cards[random_idx]
            @cards << random_card
            @cards.delete_at(random_idx)
        end
    end

    # Deal a card from the top of the deck
    def deal 
        @cards.pop
    end

    # Check if the card is already in the deck
    # Worst case is O(n) where we go through 51 cards
    def check_existing(card)
        retval = false
        @cards.each do |deck_card|
            if deck_card.value == card.value && deck_card.suit == card.suit
                retval = true
                break
            end
        end
        retval
    end

    # Return a card to the bottom of the deck
    def add(card)
        return if card.class != Card
        if !check_existing(card)
            @cards.prepend(card)
       else
           puts "Sorry the #{card.value}#{card.suit} is already in the deck"
       end
    end

    def initialize(game = 'Default')
        cards = []
        (2..14).each do |i|
            ♠ = Card.new(i,"♠",game)
            ♥ = Card.new(i,"♥",game)
            ♣ = Card.new(i,"♣",game)
            ♦ = Card.new(i,"♦",game)
            cards << [♠,♥,♣,♦]
            cards.flatten!
        end
        @cards = cards
    end


end