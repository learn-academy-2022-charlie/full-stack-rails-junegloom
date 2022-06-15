class PostController < ApplicationController
    def home 
     @posts = Post.all
    end 
    
    def post 
        @post = Post.find(params[:id])
    end 

    def new_post
    end

    def create 
        @post = Post.create(
            title: params[:title],
            content: params[:content]
        ) 
        if @post.valid? 
            redirect_to home_path
        end 
    end

    # def destroy
    #     @post = Post.find(params[:id])
    #     @post.destroy
    # end


end
