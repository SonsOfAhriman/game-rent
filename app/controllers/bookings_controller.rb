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

    @count = 0


    if @game.bookings.present?

      @game.bookings.each do |booking|
        if @booking.booking_start < booking.booking_start && @booking.booking_end < booking.booking_start || @booking.booking_start  > booking.booking_end
          true
          @count += 1
          if @count == @game.bookings.length
            @booking.save
          end
        else
          flash.alert = "This game is unavailable to rent during your proposed dates. Please choose another set of dates."
        end
      end
    else
      @booking.save

    end

    redirect_to game_path(@game)
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_start, :booking_end)
  end

end
