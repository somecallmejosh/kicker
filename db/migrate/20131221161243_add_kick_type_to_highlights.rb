class AddKickTypeToHighlights < ActiveRecord::Migration
  def change
    add_column :highlights, :kick_type, :string
  end
end
