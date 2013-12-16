class AddSchoolPhoneIdToBios < ActiveRecord::Migration
  def change
    add_column :bios, :school_phone, :string
  end
end
