class CreateSharans < ActiveRecord::Migration
  def change
    create_table :sharans do |t|
      t.text :first
      t.text :last

      t.timestamps null: false
    end
  end
end
