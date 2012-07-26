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
        game.picks.build(:user_id => @user.id, :week_id => @week.id)
      end
    end
  end

  def submit_user_picks
    @games = Game.find_all_by_week_id(params[:id])
    @user = current_user
    @week = Week.find(params[:id])
    if @week.update_attributes(params[:week])
      flash.now[:notice] = "The spreads were successfully saved"
      redirect_to games_week_path(@week)
    else
      flash.now[:notice] = "Error saving the spreads"
      render :action => 'games'
    end
  end
end
