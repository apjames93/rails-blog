class ArticlesController < ApplicationController
  def new
  end

  # the create route for the create action and passing through the pricate article_params to insure they are of a specific type
  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end
  #  private function to send params
  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
# 5.6
