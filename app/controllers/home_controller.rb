class HomeController < ApplicationController
    def index
            if params[:search]
                    @food_items = FoodItem.where(['lower(name) like ?', "%#{params[:search].downcase}%"])
            end	
    end

    def menu
        if params[:section]
            @section = Section.where(name: params[:section]).first
        end

        if @section 
            @food_items = @section.food_items
        else
            @food_items = FoodItem.all
        end

        if @food_items and params[:order]
            @food_items = if params[:order]
                            case params[:order]
                                when 'alphabet'
                                        @food_items.order('name ASC')
                                when 'mostview'
                                        @food_items.order('views DESC')
                                when 'lowtohigh'
                                        @food_items.order('price ASC')
                                when 'hightolow'
                                        @food_items.order('price DESC')
                                else
                                        @food_items
                            end
                        end
        end

    end

    def contact
    end
end
