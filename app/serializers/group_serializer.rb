class GroupSerializer < ActiveModel::Serializer
  attributes :id, :sport, :city, :state, :date, :time, :about
end
