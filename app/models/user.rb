class User < ApplicationRecord
    has_secure_password
    has_secure_password :recovery_password, validations: false

    attr_accessor :password_digest, :recovery_password_digest

    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, presence: true, uniqueness: true

    before_save :downcase_email

    private

    def downcase_email
        self.email = email.downcase
    end
end
