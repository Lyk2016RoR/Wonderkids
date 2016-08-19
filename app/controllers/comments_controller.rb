class CommentsController < ApplicationController

before_action :authenticate_user!
  before_action :set_book
  before_action :set_comment, only: [:destroy]
  before_action :authorize_user!, only: [:destroy]


  def create
  	
    @comment = @book.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @book, notice: "Yorumunuz Kaydedildi"
    else
      redirect_to @book, notice: "Yorum Kaydedilemedi"
    end
  end
  
  def destroy
    @comment.destroy
    redirect_to @book, notice: "Yorum kaldırıldı"
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

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def authorize_user!
    redirect_to @book, notice: "Not authorized" unless @comment.user_id == current_user.id
  end


  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_book
    @book = Book.find(params[:book_id])
  end

end
