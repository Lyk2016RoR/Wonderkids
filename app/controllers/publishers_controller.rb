class PublishersController < ApplicationController

before_action :set_publisher, except: [:index]

def index
  @publishers = Publisher.all
end

def show
end

private

def set_publisher
  @publisher=Publisher.find(params[:id])
end

end
