class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to 'cars_path'
    else
      render 'new'
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update
      redirect_to 'cars_path'
    else
      render 'new'
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to 'cars_path', notice: 'Your Car has been removed successfully..'
  end

private

#Strong Params

def car_params
  params.require(:car).permit(:make, :model, :seats, :engine_size, :transmission, :color, :reg_year, :fuel_type, :interior, :description, :price)
end

end
