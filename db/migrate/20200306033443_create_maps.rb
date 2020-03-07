class CreateMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
      t.string :user
      t.integer :session

      t.timestamps
    end
  end
end
