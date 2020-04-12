class SecretsController < ApplicationController
  before_action :logged_on
  skip_before_action :logged_on, only: [:show]

  def show

    if session[:name] && session[:name].length > 0
      render 'secrets/show'
    else
      redirect_to login_path
    end
    
  end



  private

  def logged_on
    return head(:forbidden) unless session.include? :name
  end

end
