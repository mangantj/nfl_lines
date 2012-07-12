class WeeksController < ApplicationController
  before_filter :current_year, :current_week, :current_user

  def index
    @weeks = Week.find_all_by_year(@current_year)
  end

  def games
    @games = Game.find_all_by_week_id(params[:id])
    @user = User.find(@current_user)
    @week = Week.find(params[:id])
    if @week.picks.empty?
      @week.picks.build 
    end
  end

  def submit_user_picks
    @games = Game.find_all_by_week_id(params[:id])
    @user = User.find(@current_user)
    @week = Week.find(params[:id])
    @games.each_with_index do |game, index|
      params[:week][:picks_attributes][index.to_s][:game_id] = game.id
      params[:week][:picks_attributes][index.to_s][:user_id] = @user.id
    end
    if @week.update_attributes(params[:week])
      redirect_to games_week_path(@week)
    else
      render 'games'
    end
  end
end
