class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :username
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
