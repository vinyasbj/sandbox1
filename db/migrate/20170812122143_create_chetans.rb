class CreateChetans < ActiveRecord::Migration
  def change
    create_table :chetans do |t|
      t.string :name
      t.integer :commit_id

      t.timestamps null: false
    end
  end
end
