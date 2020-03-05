class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, id: false, primary_key: :phone do |t|
    # create_table :users do |t|
      t.string :phone
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
