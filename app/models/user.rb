class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  
  validates :email, presence: true, if: :email_required?
  validate :validate_email_format, if: -> { email.present? }

  private

  def email_required?
    first_name.present? || last_name.present? || country.present? || other_country_name.present? || social_security.present?
  end

  def validate_email_format
    email_regex = VALID_EMAIL_REGEX
    errors.add(:email, 'is invalid') unless email.match?(email_regex)
  end
end
