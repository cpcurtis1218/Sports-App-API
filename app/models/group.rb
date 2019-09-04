class Group < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  has_many :memberships
  has_many :users, through: :memberships
end
