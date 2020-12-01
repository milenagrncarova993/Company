class Api::V1::UsersController < Api::V1::BaseController
  # acts_as_token_authentication_handler_for User

  def update
    @user = User.find_by(customer_number: user_params[:customer_number])

    return render json: {}, status: 404 unless @user.present?
    return render_error unless @user.update(user_params)

    render json: {}, status: 200
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
