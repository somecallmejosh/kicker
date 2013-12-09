class CreatePunts < ActiveRecord::Migration
  def change
    create_table :punts do |t|
      t.date :date
      t.integer :distance
      t.string :hangtime

      t.timestamps
    end
  end
end
