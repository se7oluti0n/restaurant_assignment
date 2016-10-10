class HomeController < ApplicationController
    def menu
        if params[:section]
            @section = Section.where(name: params[:section]).first
        end
    end

    def contact
    end
end
