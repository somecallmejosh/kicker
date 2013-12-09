class CreatePointAfterAttempts < ActiveRecord::Migration
  def change
    create_table :point_after_attempts do |t|
      t.date :date
      t.boolean :is_good

      t.timestamps
    end
  end
end
