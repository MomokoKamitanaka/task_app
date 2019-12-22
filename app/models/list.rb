class List < ApplicationRecord
  belongs_to :user
  has_many :cards, dependent: :destroy
  # dependent: :destroyをつけることで、オブジェクトが削除されるときに、関連付けられたオブジェクトのdestroyメソッドが実行される。つまり今回で言うと、リストが削除されたら、そのリストに紐づくカードも削除。
  
  validates :title, length: { in: 1..255 }
  # リストのタイトルの文字数が1文字以上255文字以下]
end



