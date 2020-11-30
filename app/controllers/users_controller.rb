class UsersController < ApplicationController
  def show
    @user = User.first
  end

  def update
  end
end
