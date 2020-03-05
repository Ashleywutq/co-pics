class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.text :photo
      t.string :filter

      t.timestamps
    end
  end
end
