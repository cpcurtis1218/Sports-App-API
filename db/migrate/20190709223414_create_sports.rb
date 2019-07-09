class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|
      t.string :label, null: false
      t.string :location
      t.string :date

      t.timestamps null: false
    end
  end
end
