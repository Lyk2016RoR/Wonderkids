class BooksController < ApplicationController

		  before_action :authenticate_user!, except: [:show, :index]
     	before_action :set_book, only: [:show, :update, :edit, :destroy]
     	before_action :authorize_user!, only: [:edit, :update, :destroy]
	def new
			@book = Book.new
			#load_categories
			load_form_data
	end

	def index
		@books=Book.all
	end

	def show
		@book = Book.find(params[:id])
		if current_user
      		if @book.votes.where(user_id: current_user.id).any?
        		@vote = @book.votes.where(user_id: current_user.id).first
      		else
        		@vote = @book.votes.build
     		end
    	end
	end

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

	private
	def set_book
		@book = Book.find(params[:id])
	end
end
