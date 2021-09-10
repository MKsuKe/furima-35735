class ItemsController < ApplicationController
  before_action :authenticate_user! ,only: [:new, :edit, :destroy] #ログインしていないユーザーをログインページの画面に促す
  def index
    
  end
  def new
    @item = Item.new
  end

  private

  def message_params
    params.require(:item).permit(:name, :image, :detail, :category, :status, :charge, :area, :day, :price).merge(user_id: current_user.id)
  end
end
