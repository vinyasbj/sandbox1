class CreateSandpappers < ActiveRecord::Migration
  def change
    create_table :sandpappers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
