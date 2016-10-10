class HomeController < ApplicationController
	def index
		if params[:search]
			@search_result = FoodItem.where(['lower(name) like ?', "%#{params[:search].downcase}%"])
		end	
	end
    def menu
        if params[:section]
            @section = Section.where(name: params[:section]).first
			@food_item = if params[:order]
							case params[:order]
					when 'alphabet'
						FoodItem.where(section: @section).order('name ASC')
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
