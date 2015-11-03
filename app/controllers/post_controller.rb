class PostController < ApplicationController


    def index
      @posts = Post.all.max_by{|p| p.created_at}
      @posts = Post.all.reject{|p| p == @post}
    end

    def show
      @post = Post.find(params[:id].to_i)
      @post = Post.all.reject{|p| p == @post}
      render :index
    end

  


end
