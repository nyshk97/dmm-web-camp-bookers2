class UsersController < ApplicationController
  before_action :build_book_object
  layout 'logged_in_template'
  
  def index
    @users = User.all
  end

  def show
    @books = Book.where(user_id: current_user.id)
    @user = User.find(params[:id])
  end

  def edit
  end
end
