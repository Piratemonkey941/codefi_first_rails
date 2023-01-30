class UsersController < ApplicationController
    # defs are always snakecase
    def new
        @random_number = rand(1..10)
        # debugger
        puts @random_number

        if @random_number < 5 
            redirect_to '/about-us'
        else 
            render 'new'
        end

        # render 'new' throws error rails doesnt know what to do 'double render error' should add else block
        #if user is logged in redirect to about us
        # render ''

        #otherwise render new up view template
    end

    def index

        users = 
                [
                    {
                        username: "john123"
                    },
                    {
                        username: "jack123"
                    },
                    {
                        username: "jane123"
                    },
                    {
                        username: "josh123"
                    }
                ]
        respond_to do |format|
            format.html
            format.json { render json:users }
        end
                
    end
end