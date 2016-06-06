require 'rails_helper'

describe User, type: :model do
  before do
    Password = double(:encryptor)
  end
  describe "#password=" do
    it "encrypts the password" do
      expect(Password).to receive(:create).with("password")
      user = User.new
      user.password = "password"
    end
  end
end
