class AddSchoolCounselorIdToBios < ActiveRecord::Migration
  def change
    add_column :bios, :school_counselor_name, :string
    add_column :bios, :school_counselor_email, :string
    add_column :bios, :school_counselor_phone, :string
  end
end
