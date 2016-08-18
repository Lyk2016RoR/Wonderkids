class BooksController < ApplicationController
before_action :category_sidebar
@category_sidebar =Category.all
def show
	@books = Book.find(params[:id])
end
def category_sidebar

	@category_sidebar =Category.all
end
end
