class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def my_cars
    @cars = current_user.cars
    authorize @cars
  end
  def index
    @cars = policy_scope(Car).order(created_at: :asc)
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
    authorize @car
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to cars_path, notice: 'Listing was successfully created'
    else
      render 'new'
    end
    authorize @car
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    if @car.update
      redirect_to cars_path, notice: 'Listing was successfully updated'
    else
      render 'new'
    end
  end

  def destroy
    @car.destroy
    redirect_to my_cars_path, notice: 'Your Car has been removed successfully..'
  end

private

def set_car
  @car = Car.find(params[:id])
  authorize @car
end

#Strong Params

def car_params
  params.require(:car).permit(:make, :model, :seats, :engine_size, :transmission, :color, :reg_year, :fuel_type, :interior, :description, :price, :user, :photo)
end

end
