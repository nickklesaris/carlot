class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to '/cars/new'
      flash[:notice] = "Car created."
    else
      render 'new'
    end
  end
private
  def car_params
    params.require(:car).permit(:color, :year, :mileage, :description, :manufacturer_id)
  end

end
