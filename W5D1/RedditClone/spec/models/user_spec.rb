require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do

  describe "test" do
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }
  it { should have_many(:subs) }
  it { should have_many(:user_votes) }
  it { should have_many(:comments) }

  subject(:test_user) do
    User.new(username: "testy", password: "abc123")
  end

  describe "#is_password?" do
    it "returns true if the password is correct" do
      expect(test_user.is_password?("abc123")).to be true
    end

    it "returns false if passed an incorrect password" do
      expect(test_user.is_password?("badpass")).to be false
    end
  end

  describe "#reset_session_token" do

    it "resets the user's session token" do
      session[:session_token] = test_user.reset_session_token!
      old_token = test_user.session_token
      test_user.reset_session_token!

      exepct(test_user.session_token).to_not eq(old_token)
    end

    it "returns the new session token" do
      expect(test_user.reset_session_token!).to eq(test_user.session_token)
    end
  end

  describe "::find_by_credentials" do
    before(:each) do
      test_user.save
    end

    it "returns nil if no user is found" do
      expect(User.find_by_credentials("heya", "abxxxx")).to eq(nil)
    end

    it "returns the user if proper credentials are given" do
      expect(User.find_by_credentials("testy", "abc123")).to eq(test_user)
    end
  end
end

end
