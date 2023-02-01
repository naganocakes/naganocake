class Admin::HomesController < ApplicationController
  def top
  @orders = Order.all
  @customer = Customer.find(params[:id])
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name)
  end
end
