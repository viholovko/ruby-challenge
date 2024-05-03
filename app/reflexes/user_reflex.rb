# frozen_string_literal: true

class UserReflex < ApplicationReflex
  def auto_save
    user = User.find(element.dataset[:id])
    user.update(user_params)
  end

  def delete
    user = User.find(element.dataset[:id])
    user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :country, :other_country_name, :social_security)
  end

  def validate_email(email)
    return true if email.blank?
    email.match?(User::VALID_EMAIL_REGEX)
  end

end
