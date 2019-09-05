# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :groups, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memberships
end
