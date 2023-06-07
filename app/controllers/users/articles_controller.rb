class Users::ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/1
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to users_articles_path, notice: 'Article was successfully created.'
    else
      render :new
    end
  end


  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      redirect_to users_articles_url, notice: 'Article was successfully updated.'
    else
      puts @article.errors.full_messages # エラーメッセージを出力
      render :edit
    end
  end
  

  # DELETE /articles/1
  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :content, :image)
    end
end
