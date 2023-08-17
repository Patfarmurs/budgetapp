require 'rails_helper'

RSpec.describe Transfer, type: :model do
  let(:first_user) { User.create(full_name: 'Patrick', email: 'patrickkeita80@yahoo.com', password: 'qqqqqqqq') }
  let!(:first_group) { Group.create(name: 'BuyHive', icon: 'https://images-workbench.99static.com/Qm9BAItd9893eeG5HHytsHFajf4=/99designs-contests-attachments/72/72939/attachment_72939411', user_id: first_user.id) }
  let(:transfer) { Transfer.new(name: 'Thalia', amount: 3.0, author_id: first_user.id) }

  context 'validation tests' do
    it 'should not be valid without a name' do
      transfer.name = nil
      expect(transfer).to_not be_valid
    end

    it 'should not be valid without an amount' do
      transfer.amount = nil
      expect(transfer).to_not be_valid
    end

    it 'amount must be a number and nothing else' do
      transfer.amount = 'makeup'
      expect(transfer).to_not be_valid
    end

    it 'must have a valid author ID' do
      transfer.author_id = nil
      expect(transfer).to_not be_valid
    end
  end
end
