class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  
    def current_year
      @current_year = Date.today.year
    end

    def current_week
      @current_week = 1
    end

    def current_user
      @current_user = 1
    end
end
