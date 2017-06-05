class User < ApplicationRecord
  has_secure_password
  before_save :set_auth_token
  validates_presence_of :email
  validates_presence_of :password
  validates_uniqueness_of :email
  has_many :sources
  has_many :funds

  def set_auth_token
    if self.authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end

  def generate_authentication_token
    loop do
      token = SecureRandom.urlsafe_base64(nil, false)
      break token unless User.where(authentication_token: token).first
    end
  end
end
