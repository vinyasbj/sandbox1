class CreateNisargas < ActiveRecord::Migration
  def change
    create_table :nisargas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
