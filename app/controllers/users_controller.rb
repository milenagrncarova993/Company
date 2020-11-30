class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :update ]
  def show
    @user = User.first
  end
end