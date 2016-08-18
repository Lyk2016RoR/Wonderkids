class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :category_sidebar

  private

  def category_sidebar
  	@category_sidebar =Category.all
  end

end
