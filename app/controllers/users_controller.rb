class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :update ]
  def show
    @user = User.first
  end

  def update
    if @restaurant.update(restaurant_params)
      render :show
    else
      render_error
    end
  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

  def render_error
    render json: { errors: @restaurant.errors.full_messages },
      status: :unprocessable_entity
  end
end