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
    @user = User.find(params[:id])
    render :layout => 'application'
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_url(@user), notice: 'You have updated user successfully.'
    else
      render 'users/edit'
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :thumbnail)
  end
end
