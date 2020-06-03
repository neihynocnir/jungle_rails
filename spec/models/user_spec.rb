require 'rails_helper'

RSpec.describe User, type: :model do

  it { should have_secure_password }

  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email)}
    subject do
      User.new(email: "JOHN123")
    end

    it do
      user = User.create!(first_name: "john", last_name: "abc", email: "john123", password: "abcdefghij")
      expect(user).to validate_uniqueness_of(:email)
    end
    
    it do
      should validate_length_of(:password).
        is_at_least(8).
        on(:create)
    end
    
  end

end
