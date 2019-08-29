class AddUserToGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :user, foreign_key: true, null: false
  end
end
