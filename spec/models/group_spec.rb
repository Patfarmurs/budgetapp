require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:first_user) { User.create(full_name: 'Patrick', email: 'patrickkeita80@gyahoo.com', password: 'Patfarmurs') }
  let(:first_group) { Group.new(name: 'BuyHive', icon: 'https://images-workbench.99static.com/Qm9BAItd9893eeG5HHytsHFajf4=/99designs-contests-attachments/72/72939/attachment_72939411', user_id: first_user.id) }

  context 'validation tests' do
    it 'should not be valid without a name' do
      first_group.name = nil
      expect(first_group).to_not be_valid
    end

    it 'should not be valid without an icon' do
      first_group.icon = nil
      expect(first_group).to_not be_valid
    end

    it 'must have a valid user_id' do
      first_group.user_id = nil
      expect(first_group).to_not be_valid
    end
  end
end
