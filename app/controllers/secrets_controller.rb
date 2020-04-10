class SecretsController < ApplicationController
  before_action :require_login, only: [:show]

  def show

  end

  private 

  def require_login
    if current_user == nil 
      redirect_to '/login'
    elsif session[:name].empty? 
      redirect_to '/login'
    end
  end
end
