class BookingsController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def show
  end

  def new
    @game = Game.find(params[:game_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @game = Game.find(params[:game_id])
    @booking = Booking.new(booking_params)

    @booking.game = @game
    @booking.user = current_user

    authorize @booking

    @game.bookings.each do |booking|
      if @booking.booking_start < booking.booking_start && @booking.booking_end < booking.booking_start || @booking.booking_start  > booking.booking_end
        @booking.save
      else
        break
      end
    end

    redirect_to game_path(@game)
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_start, :booking_end)
  end

end
