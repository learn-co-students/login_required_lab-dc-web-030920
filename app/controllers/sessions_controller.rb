class SessionsController < ApplicationController

    def create
        if !params[:name] || params[:name].empty?
            redirect_to login_path
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        if !params[:name]
            params[:name] = nil
            session.delete :name
        end
    end


end
