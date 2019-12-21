class Card < ApplicationRecord
  belongs_to :list

  validates :titele, length: { in: 1..255 }
  validates :memo, length: { maxinum 1000 }

end
