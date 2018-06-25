class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    def index
        @posts = Post.all
    end
    
    def new
    end
    
    def show
    end
    
    def create
        post = Post.create(post_params)
        flash[:success] = "새 글이 등록되었습니다."
        redirect_to "/posts/#{post.id}"
        
    end
    
    def edit
    end 
    
    def update
        @post.update(post_params)
        p @post.id
        redirect_to "/posts/#{@post.id}"
    end
    

    
    def destroy
        @post.destroy
        redirect_to "/posts"
    end
    
    def post_params
        {title: params[:title], contents: params[:contents]}
    end
    
    def set_post
         @post = Post.find(params[:id])
    end
end
