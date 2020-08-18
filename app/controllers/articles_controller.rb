class ArticlesController < ApplicationController
    
    def index
        articles = Article.all 
        render json: articles
    end

    def create
        article = Article.create(article_params)
        render json: article

    end

    def show
        article = Article.find_by(id: params[:id])
        render json: article
    end

    def destroy
        article = Article.find_by(id: params[:id])
        article.destroy
    end

    private 

    def article_params 
        params.require(:article).permit!
    end

end
