class TopController < ApplicationController

  def index
    @lists = List.where(user: current_user).order("created_at ASC")

    # List.where(user: current_user)は、user_idが現在ログインしているユーザー(current_user)のレコードを取得
    # order("created_at ASC") 古い順の投稿一覧
  end
  
end
