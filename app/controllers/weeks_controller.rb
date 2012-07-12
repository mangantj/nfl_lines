class WeeksController < ApplicationController
  before_filter :current_year, :current_week, :authenticate_user!

  def index
    @weeks = Week.find_all_by_year(@current_year)
  end

  def games
    @week = Week.find(params[:id])
    @games = @week.games
    @user = current_user
    @week.games.each do |game|
      if game.picks.empty?
        game.picks.build
      end
    end
  end

  def submit_user_picks
    @games = Game.find_all_by_week_id(params[:id])
    @user = current_user
    @week = Week.find(params[:id])
    @games.each_with_index do |game, index|
      params[:week][:games_attributes][index.to_s][:picks_attributes]['0'][:game_id] = game.id
      params[:week][:games_attributes][index.to_s][:picks_attributes]['0'][:user_id] = @user.id
    end
    if @week.update_attributes(params[:week])
      redirect_to games_week_path(@week)
    else
      render 'games'
    end
  end
end
