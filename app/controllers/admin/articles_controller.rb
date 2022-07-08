class Admin::ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  def index
    @articles = Article.all
    respond_to do |format|
      format.html
      # f.xml {render xml: @articles.as_json(only: [:id, :title]) }
      format.xml  {render :'admin/articles/index.xml'}
      # format.json {render :json => @articles.as_json(except: [:created_at, :updated_at])}
      format.json {render :'admin/articles/index.json'}
    end
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end


  def create
    @article = Article.new(article_params)
    respond_to do |format|
      if @article.save
        format.html { redirect_to admin_article_path(@article), notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to admin_article_url(@article), notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.destroy

    respond_to do |format|
      format.html { redirect_to admin_articles_url, notice: "Article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :description, :image)
    end
end
