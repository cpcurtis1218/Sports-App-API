class GroupSerializer < ActiveModel::Serializer
  attributes :id, :sport, :city, :state, :date, :time, :about, :user_id
  has_many :memberships
end
