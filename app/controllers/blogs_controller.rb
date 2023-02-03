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
            flash[:message] = "Blog was successfully saved!"
            #if blog was saved redirect
            redirect_to blogs_path
        else 
            #other wise rerender
            render :new, status: :unprocessable_entity
        end
        # else re-renmder new will be false if validates is not filled out
        # render :new, status: :unprocessable_entity
    end
    
#====================================================================

    def show 
        @blog = Blog.find(params[:id])
    end

#====================================================================

    def edit
        @blog = Blog.find(params[:id])
    end

#====================================================================

    def update
        @blog = Blog.find(params[:id])

        if @blog.update(title: params[:blog][:title], description: params[:blog][:description])
            flash[:message] = "Blog was successfully saved!"
            redirect_to blog_path(@blog)
        else 
            render :edit, status: :unprocessable_entity
        end
    end


end