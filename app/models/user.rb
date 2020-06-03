class User < ActiveRecord::Base
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates_uniqueness_of :email
  validates_length_of :password, minimum: 8, on: :create


  def self.authenticate_with_credentials(email, password)
    email = email.downcase.strip
    @user = User.find_by_email(email)
    if @user && @user.authenticate(password)
      @user
    else
      nil
    end
  end
end
