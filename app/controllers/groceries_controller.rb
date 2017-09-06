class GroceriesController < ApplicationController
  def index
    @grocery = Grocery.new
    @groceries = Grocery.all.reverse
  end

  def create
    @grocery = Grocery.create(grocery_params)
  end

  def destroy
    @id = params[:id]
    Grocery.destroy(@id)
  end

  private

  def grocery_params
    params.require(:grocery).permit(:name, :checked)
  end
end
