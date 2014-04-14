class ManufacturersController < ApplicationController
  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      redirect_to '/manufacturers/new'
      flash[:notice] = "Manufacturer created."
    else
    end
  end
private
  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end
end
