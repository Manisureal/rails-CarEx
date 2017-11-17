class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).where(user: current_user)
    authorize @bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    # @car = Car.find(params[:car_id])
    # @booking = Booking.new
    # authorize @car
    # authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    car = Car.find(params[:car_id])
    @booking.car = car
    @booking.user = current_user
    if @booking.save
      flash[:notice] = "Successfully created..."
      redirect_to(car_bookings_path(car))
    else
      render 'new'
    end
    authorize @booking
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
