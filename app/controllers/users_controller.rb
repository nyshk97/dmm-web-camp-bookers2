class UsersController < ApplicationController
  before_action :build_book_object
  
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end
end
