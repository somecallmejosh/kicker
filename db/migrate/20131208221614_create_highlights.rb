class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.date :date
      t.string :title
      t.string :opponent
      t.string :link
      t.text :comments

      t.timestamps
    end
  end
end
