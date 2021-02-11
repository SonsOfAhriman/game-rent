class GamesController < ApplicationController
  def index
    @games = Game.all
    @search = params["title"]

    if @search.present?
      @title = @search["item"]
      @games = Game.where("title ILIKE ?", "%#{@title}%")
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)

    @game.user = current_user

    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :availability, :photo)
  end

end
