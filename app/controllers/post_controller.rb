class PostController < ApplicationController
    def index
     @posts = Post.all
    end 
    
    def show
        @post = Post.find(params[:id])
    end 

    def new
        @post = Post.new
    end

    def create 
        @post = Post.create(post_params) 
        if @post.valid? 
            redirect_to posts_path
        end 
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.destroy
            redirect_to posts_path
        end
    end

    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to post_path(@post)
    end

    private 
    def post_params
        params.require(:post).permit(:title, :content)
    end
end
