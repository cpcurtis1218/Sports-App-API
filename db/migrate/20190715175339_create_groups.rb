class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :sport, null: false
      t.string :city
      t.string :state, null: false
      t.string :date, null: false
      t.string :time

      t.timestamps
    end
  end
end
