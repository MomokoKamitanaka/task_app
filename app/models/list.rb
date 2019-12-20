class List < ApplicationRecord
  blong_to :user
  validates :titele,length { in: 1..255}
  # リストのタイトルの文字数が1文字以上255文字以下
end
