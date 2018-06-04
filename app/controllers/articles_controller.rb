class ArticlesController < ApplicationController
   def new
       @article = Article.new
   end

   def create
   		@article = Article.new(article_params)
   		if @article.save
        flash[:notice] = "A Article was succesfully created"
        redirect_to article_path(@article)
      else "new"
      end
   	 end

    def show
      @article= Article.find(params[:id])

    end 

private
def article_params
	params.require(:article).permit(:title, :description)
end

end
