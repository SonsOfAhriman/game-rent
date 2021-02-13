class GamesController < ApplicationController

  before_action :authenticate_user!

  def index
    @games = policy_scope(Game)
    @search = params["title"]

    if @search.present?
      @title = @search["item"]
      @games = Game.where("title ILIKE ?", "%#{@title}%")
    end
  end

  def show
    @game = Game.find(params[:id])
    authorize @game
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
