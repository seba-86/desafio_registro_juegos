class Game < ApplicationRecord
    has_one_attached :boardimage
    has_one :rule
end
