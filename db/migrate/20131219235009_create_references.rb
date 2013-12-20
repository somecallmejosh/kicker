class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :reference_name
      t.string :reference_title
      t.string :reference_email
      t.string :reference_phone

      t.timestamps
    end
  end
end
