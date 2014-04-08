require 'spec_helper'

describe User do
  
it {should have_secure_password}
it {should validate_presence_of(:name)}
it {should validate_presence_of(:email)}

 it do
    patrick = User.create!({
    name: 'Patrick',
    email: 'pat@rick.com',
    password: 'spongebob',
    password_confirmation: 'spongebob',
  })
    should validate_uniqueness_of(:email)
  end

it {should have_many(:links)}

end
