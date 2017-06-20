class ArticlesController < ApplicationController
	include ArticlesHelper  # module name

#   以下 method 在rake routes 里都可以查到的

  def index
    @articles = Article.all
  end 

  def show
    @article = Article.find(params[:id])
  end

  def new 
    @article = Article.new
  end

  def create
    # @article = Article.new
    # @article.title = params[:article][:title]
    # @article.body = params[:article][:body]
    # @article.save
    # redirect_to article_path(@article)

    # @article = Article.new(
    #   title: params[:article][:title],
    #   body: params[:article][:body])
    # @article.save
    # redirect_to article_path(@article)
  
    @article = Article.new(article_params)
   # @article = Article.new(params(article_params)
    @article.save
    flash.notice = "Article '#{@article.title}' Created!"
    redirect_to article_path(@article)
  end

  def destroy
  	@article = Article.find(params[:id])
  	@article.destroy
  	flash.notice = "Article '#{@article.title}' Deleted!"
  	redirect_to articles_path
  end

  def edit
  	 @article = Article.find(params[:id])
  end

  def update
  	@article = Article.find(params[:id])
  	# 这里的“article_params" 定义在”help->articles_helper.rb
  	# 里面规定了哪些属性我们可以更新
  	@article.update(article_params)

    flash.notice = "Article '#{@article.title}' Updated!"

  	redirect_to article_path(@article)
  end

end
