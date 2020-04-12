class SecretsController < ApplicationController
    before_action :require_login

    # def index
    # end

    def show
        # unless session.include? :user_id       
        #     redirect_to(controller: 'sessions', action: ':show')
        # end
    end

end