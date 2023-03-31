class User < ApplicationRecord

    has_secure_password

    has_many :favorites
    has_many :cars, through: :favorites

    validates :email, uniqueness: true

    # def authenticate(password)
    #     if BCrypt::Password.new(self.password_digest) == password
    #         self
    #     else
    #         false
    #     end
    # end

end
