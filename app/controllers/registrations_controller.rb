class RegistrationsController < Devise::RegistrationsController
  def check_email_duplicacy
    email = params[:email]
    user = User.find_by_email(email)

    if user
      render json: { msg: "User with this email already exists" }
    else
      render json: { msg: "" }
    end
  end
end
