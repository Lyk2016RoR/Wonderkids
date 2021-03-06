class VotesController < ApplicationController
	before_action :set_book
  	before_action :set_vote, only: [:update]
	
	def create
	    @vote = @book.votes.new
    	@vote.rating = params[:vote][:rating]
   	    @vote.user = current_user

    	if @vote.save
	      redirect_to @book, notice: "Vote was saved."
	    else
	      redirect_to @book, notice: "Vote is not valid."
	    end
	end

	def update
	    if @vote.update(rating: params[:vote][:rating])
	      redirect_to @book, notice: "Vote was saved."
	    else
	      redirect_to @book, notice: "Vote is not valid."
	    end
    end

private
	
	def set_book
		@book = Book.find(params[:book_id])
	end

	def set_vote
    	@vote = Vote.find(params[:id])
    end

end
