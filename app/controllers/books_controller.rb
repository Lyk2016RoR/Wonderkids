class BooksController < ApplicationController
<<<<<<< HEAD
before_action :category_sidebar
@category_sidebar =Category.all
=======

		before_action :authenticate_user!, except: [:show, :index]
     	before_action :set_book, only: [:show, :update, :edit, :destroy]
     	before_action :authorize_user!, only: [:edit, :update, :destroy]

def new
		@book = Book.new
		#load_categories
		load_form_data

>>>>>>> 706918c42d1f866ac41ae94515db834e00184b4a
def show
	@books = Book.find(params[:id])
end
def category_sidebar

<<<<<<< HEAD
	@category_sidebar =Category.all
end
=======
def create 
		@book = current_user.books.new(book_params)
		if @book.save
			flash[:success] = 'İşlem başarıyla tamamlandı'
			redirect_to book_path(@book)
		else
			#load_categories
			load_form_data
			render :new
		end
	end

	def update
		if @book.update(book_params)
			redirect_to book_path(@book)
		else
			#load_categories
			load_form_data
			render :edit
		end
	end

	def load_form_data
		@categories = Category.all.collect {|c| [c.name, c.id]}
	end

>>>>>>> 706918c42d1f866ac41ae94515db834e00184b4a
end
