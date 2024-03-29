class Admin::ItemsController < ApplicationController
  
def new
  @item = Item.new
end

def create
  @item = Item.new(item_params)
  if @item.save
      redirect_to admin_items_path
  else
      render new_admin_item_path
  end
end

def index
  @items = Item.all
end

def show
  @item = Item.find(params[:id])
end

def edit
  @item = Item.find(params[:id])
end

def update
  @item = Item.find(params[:id])
  @item.update(item_params)
  redirect_to admin_item_path(@item.id)
end




  private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :genre_id, :price, :is_active)
  end
end