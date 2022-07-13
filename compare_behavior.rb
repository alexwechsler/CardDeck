module DeckofCards::CompareBehavior

    # Note: I have only implemented a basic compare but 
    # can forsee additional ones depending on the game.
    
    # Compare cards by rank
    # returns higher val or 1 if equal
    def compare(card_a, card_b)
        retval = 1
        if card_a.has_value > card_b.has_value
            retval = card_a.has_value
        elsif card_a.has_value < card_b.has_value
            retval = card_b.has_value
        end
        retval
    end
end