class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
  end

  def create

    Blog.create(
      title: params[:title],
      content: params[:content],
      image_url: params[:image_url]
    )
    redirect_to root_path
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(
      title: params[:title],
      content: params[:content],
      image_url: params[:image_url]
    )
    redirect_to blog_path(@blog.id)

  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    redirect_to root_path
  end
end
