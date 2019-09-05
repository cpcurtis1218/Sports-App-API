# frozen_string_literal: true

class MembershipSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id
  has_one :user
  has_one :group
end
