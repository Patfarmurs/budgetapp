class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :transfers

  validates :icon, presence: true, length: { maximum: 250 }
  validates :name, presence: true, length: { maximum: 250 }

  def self.created_by_current_user(current_user)
    where(user_id: current_user.id).order(created_at: :desc)
  end
end
