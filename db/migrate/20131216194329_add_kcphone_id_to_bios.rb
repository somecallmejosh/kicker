class AddKcphoneIdToBios < ActiveRecord::Migration
  def change
    add_column :bios, :primary_kicking_coach_phone, :string
  end
end
