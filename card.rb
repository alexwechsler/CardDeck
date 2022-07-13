class Card
    require_relative 'value_for_game'
    attr_accessor :suit, :value 
    
    include ValueForGame

    @suit
    @value

    @value_system = 'Default'

    def has_value
        game_value = eval("ValueForGame::#{@value_system}")
        game_value.new.has_value(self)
    end

    def is_valid?
        value_ok = false
        suit_ok = false

        if self.value.is_a? String
            if "JQKA".include?(self.value.to_s) && self.value.length == 1
                value_ok = true
            end
        elsif self.value >=2 && self.value <= 10
            value_ok = true
        end

        if self.suit.is_a? String
            if "♠♥♣♦".include?(self.suit) && self.suit.length == 1
                suit_ok = true
            end
        end

        value_ok && suit_ok
    end

    def initialize(value, suit, value_system = 'Default')
        case value
        when 11
            @value = "J"
        when 12
            @value = "Q"
        when 13
            @value = "K"
        when 14
            @value = "A"
        else    
            @value = value
        end
        @suit = suit 
        @value_system = value_system
        if !self.is_valid?
           raise StandardError.new "Invalid Card Value"
        end     
    end
    
end