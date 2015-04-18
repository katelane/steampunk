class CreateMiddles < ActiveRecord::Migration
  def change
    create_table :middles do |t|
      t.text :body
      t.timestamps null: false
    end
  end
end
