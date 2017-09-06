class GroceriesController < ApplicationController
  def index
    @grocery = Grocery.new
    @groceries = Grocery.all.order(:id).reverse
  end

  def create
    @grocery = Grocery.create(grocery_params)
  end

  def update
    Grocery.find(params[:id]).update(grocery_params)
  end

  def destroy
    @id = params[:id]
    Grocery.destroy(@id)
  end

  def clear
    Grocery.where(checked: true).destroy_all
    @groceries = Grocery.all.order(:id).reverse
  end

  private

  def grocery_params
    params.require(:grocery).permit(:name, :checked)
  end
end
