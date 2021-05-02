class Game < ApplicationRecord
    has_one_attached :boardimage
    has_one :rule
    has_one_attached :game_pieces
    # has_many_attached :game_pieces => multiples imagenes, multiple: true en form, strong_params como array de objetos .Pero no accepta variante en index
    
end
