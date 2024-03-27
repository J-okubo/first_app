class PostsController < ApplicationController

  def index
    #@post1 = "これはコントローラーで定義したインスタンス編成を確認するためのも文字列です。"
    @posts = Post.all
  end

  def new

  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end

end
