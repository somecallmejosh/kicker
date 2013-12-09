class CreateFieldGoals < ActiveRecord::Migration
  def change
    create_table :field_goals do |t|
      t.date :date
      t.integer :distance
      t.boolean :is_good

      t.timestamps
    end
  end
end
