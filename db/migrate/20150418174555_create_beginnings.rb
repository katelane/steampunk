class CreateBeginnings < ActiveRecord::Migration
  def change
    create_table :beginnings do |t|
      t.text :body
      t.timestamps null: false
    end
  end
end
