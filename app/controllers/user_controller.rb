class UserController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
    debuggger
  end

end
