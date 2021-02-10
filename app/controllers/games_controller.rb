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
  end

  def new
  end

  def create
  end
end
