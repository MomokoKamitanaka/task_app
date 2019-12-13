class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 20 }
end

# presence: trueは値が空ではないということ確かめるバリデーション
# また、length: { maximum: 20 }は値の文字数が最大20文字までということを表すバリデーション