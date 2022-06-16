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
        @post = Post.create(post_params) 
        if @post.valid? 
            redirect_to home_path
        end 
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.destroy
            redirect_to home_path
        end
    end

    private 
    def post_params
        params.require(:post).permit(:title, :content)
    end
end
