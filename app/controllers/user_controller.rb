class UserController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    # debugger
  end

  def create
    @user = User.new(user_params)
    # Not the final implementation!
    if @user.save
    # Handle a successful save.
    else
    render 'new', status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password,
      :password_confirmation)
    end

end
