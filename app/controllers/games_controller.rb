class GamesController < ApplicationController

  before_action :authenticate_user!

  def index

    @games = policy_scope(Game)

    if params["title"].present?
      @search = params["title"]
      @title = @search["item"]

      if @title.present?

        @games = Game.search_by_title_and_description(@title)
      else
        @games = Game.all
      end
    else
      @games = Game.all
    end
  end

  def show
    @game = Game.find(params[:id])
    authorize @game
    @booking = @game.bookings.new
  end

  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(game_params)
    authorize @game

    @game.user = current_user

    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    authorize @game

    redirect_to user_path(@game.user)
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :availability, :photo)
  end

end
