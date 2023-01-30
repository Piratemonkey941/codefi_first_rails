# file name in controller will be snake case

#always cammel case w/cap at start
class StaticPagesController < ApplicationController
    # defs are always snakecase
    def landing

    end

    def about_us


        #render & redirect_to cant call more then once
        # render 'employee_about_us'
    end
end
