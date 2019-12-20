class List < ApplicationRecord
  belongs_to :user
  validates :title, length: { in: 1..255 }
  # リストのタイトルの文字数が1文字以上255文字以下
end
