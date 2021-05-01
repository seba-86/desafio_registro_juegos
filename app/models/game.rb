class Game < ApplicationRecord
    has_one_attached :boardimage
    has_one :rule
    has_one_attached :game_pieces
    
end
