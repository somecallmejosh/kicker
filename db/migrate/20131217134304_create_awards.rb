class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :award_name
      t.date :date

      t.timestamps
    end
  end
end
