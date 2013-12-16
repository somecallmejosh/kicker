class AddFieldnameIdToBios < ActiveRecord::Migration
  def change
    add_column :bios, :primary_kicking_coach_email, :string
  end
end
