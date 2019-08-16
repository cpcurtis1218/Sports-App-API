class AddAboutToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :about, :string
  end
end
