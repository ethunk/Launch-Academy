class SuppliesController < ApplicationController
  def index
    @title = "All Supplies:"
    @supplies = Supply.all
  end

  def show
    @supply = Supply.find(params[:supplies_id])
    
  end
end
