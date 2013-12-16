class AddSchoolFaxIdToBios < ActiveRecord::Migration
  def change
    add_column :bios, :school_fax, :string
  end
end
