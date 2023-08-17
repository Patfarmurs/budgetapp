require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    User.new(full_name: 'Patrick', email: 'patrickkeita80@yahoo.com', password: 'Patfarmurs',
             password_confirmation: 'Patfarmurs')
  end

  before { user.save }

  it 'validates presence of Full Name' do
    user.full_name = nil
    expect(user).to_not be_valid
  end

  it 'validates presence of password' do
    user.password = nil
    expect(user).to_not be_valid
  end

  it 'validates password length greater than 6' do
    user.password = 'Patfar'
    expect(user).to_not be_valid
  end
end
