module ValueForGame

    class Default
        def has_value(card)
            if card.value.is_a? String
                case card.value
                when "J"
                    value = 11
                when "Q"
                    value = 12
                when "K"
                    value = 13
                when "A"
                    value = 14
                end
            else
                value = card.value
            end
            value
        end
    end

    class BlackJack
        def has_value(card)
            if card.value.is_a? String
                case card.value
                when "J"
                    value = 10
                when "Q"
                    value = 10
                when "K"
                    value = 10
                when "A"
                    value = 1
                end
            else
                value = card.value
            end
            value
        end
    end

end