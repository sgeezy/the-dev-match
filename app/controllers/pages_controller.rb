class PagesController < ApplicationController
    def home
        @basic_plan = Plan.find(1)
        @pro_plan = Plan.find(2)
    end

    def about
    end
    
    def contact
    end
    
    def packages
    end
    
    def privacy
    end
    
    def tos
    end
    
end
