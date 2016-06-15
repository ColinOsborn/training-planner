class User < ActiveRecord::Base
  include BCrypt
  has_secure_password

  validates :username, presence: true, uniqueness: true

  enum role: ["coach", "admin", "athlete"]
  
  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    Password.create(new_password)
  end

end
