class StaticController < ApplicationController
    skip_before_action :require_login, only: [:about]

    def about 
        render  'about'
    end 
end
