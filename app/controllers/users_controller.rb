class UsersController < ApplicationController

  def index
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new

  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book), notice: 'You have created book successfully'
    else
      render action: :index
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :body,)
  end

  def user_params
    params.require(:user).permit(:profile_image)
  end

end
