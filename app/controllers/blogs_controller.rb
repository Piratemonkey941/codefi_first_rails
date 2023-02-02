class BlogsController < ApplicationController
    def index
        @blogs = Blog.all
    end
    
#====================================================================

    def new
        @blog = Blog.new
    end
    
#====================================================================

    def create
        @blog = Blog.new(title: params[:blog][:title], description: params[:blog][:description])

        # if blog was saved redirect to index 
        if @blog.save 
            redirect_to blogs_path
        else 
            render :new, status: :unprocessable_entity
        end
        # else re-renmder new will be false if validates is not filled out
        # render :new, status: :unprocessable_entity
    end
    
#====================================================================

    def show 
        @blog = Blog.find(params[:id])
    end
end