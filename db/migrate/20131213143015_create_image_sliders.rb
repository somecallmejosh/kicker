class CreateImageSliders < ActiveRecord::Migration
  def change
    create_table :image_sliders do |t|
      t.string :image_link
      t.string :alt_tag
      t.string :caption

      t.timestamps
    end
  end
end
