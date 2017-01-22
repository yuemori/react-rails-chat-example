class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name, null: false, unique: true
      t.references :user, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
