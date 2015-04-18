class CreateEnds < ActiveRecord::Migration
  def change
    create_table :ends do |t|
      t.text :body
      t.timestamps null: false
    end
  end
end
