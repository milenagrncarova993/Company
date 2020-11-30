class Api::V1::UsersController < Api::V1::BaseController
  # acts_as_token_authentication_handler_for User

  def update
    @user = User.find_by(customer_number: user_params[:customer_number])
    logger.debug("AAAAA")
    logger.debug(@user)

    if @user.update(user_params)
      # do nothing; but we need to return code 200
    else
      render_error
    end
  end

  private

  def user_params
    params.require(:user).permit(:customer_number, :street_name, :street_number, :zip, :city)
  end

  def render_error
    render json: { errors: @user.errors.full_messages },
           status: :unprocessable_entity
  end

end
