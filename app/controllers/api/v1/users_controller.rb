class Api::V1::UsersController < Api::V1::BaseController
    acts_as_token_authentication_handler_for User
    before_action :set_user, only: [ :show, :update ]
  
    def update
      if @user.update(user_params)
        render :show
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

    def set_user
       @user = User.find_by(customer_number: params[:customer_number])
    end
  end
