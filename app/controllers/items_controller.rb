class ItemsController < ApplicationController
  before_action :authenticate_user! ,only: [:new, :edit, :destroy] #ログインしていないユーザーをログインページの画面に促す
  def index
    
  end
end
