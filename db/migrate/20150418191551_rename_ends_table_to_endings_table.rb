class RenameEndsTableToEndingsTable < ActiveRecord::Migration
  def change
    rename_table :ends, :endings
  end
end
