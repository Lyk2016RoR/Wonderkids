class WelcomeController < ApplicationController
	def index
			@books = Book.all
			@category_sidebar = Category.all
	end
end
