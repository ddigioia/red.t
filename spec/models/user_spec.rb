require 'spec_helper'

describe User do
  
it {should have_secure_password}

 it do
    patrick = User.create!({
    name: 'Patrick',
    email: 'pat@rick.com',
    password: 'spongebob',
    password_confirmation: 'spongebob',
  })
    should validate_uniqueness_of(:email)
  end

end
