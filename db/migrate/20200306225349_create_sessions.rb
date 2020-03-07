class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.string :photo
      t.string :name
      t.string :filter

      t.timestamps
    end
  end
end
