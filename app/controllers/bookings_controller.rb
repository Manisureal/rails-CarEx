class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to 'bookings_path'
    else
      render 'new'
    end
  end

  def edit
    @booking = Booking.find(params[:id])

  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to 'bookings_path'
    else
      render 'new'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to 'bookings_path', notice: 'Booking was successfully deleted..'
  end

  private

  def booking_params
    params.require(:booking).permit(:booked_time, :user_id, :car_id)
  end

end
