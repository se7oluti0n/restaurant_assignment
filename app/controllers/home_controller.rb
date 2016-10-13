class HomeController < ApplicationController
    def index
            if params[:search]
                    @food_items = FoodItem.where(['lower(name) like ?', "%#{params[:search].downcase}%"])
            end	
    end

    def menu
        if params[:section]
            @section = Section.where(name: params[:section]).first
            @food_items = if params[:order]
                            case params[:order]
                                when 'alphabet'
                                        FoodItem.where(section: @section).order('name ASC')
                                when 'mostview'
                                        FoodItem.where(section: @section).order('views DESC')
                                when 'lowtohigh'
                                        FoodItem.where(section: @section).order('price ASC')
                                when 'hightolow'
                                        FoodItem.where(section: @section).order('price DESC')
                                else
                                        nil
                            end
                    else
                            @section.food_items
                    end
        end

    end

    def contact
    end
end
