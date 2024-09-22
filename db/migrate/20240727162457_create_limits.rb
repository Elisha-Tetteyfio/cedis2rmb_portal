class CreateLimits < ActiveRecord::Migration[7.0]
  def change
    create_table :limits do |t|
      t.decimal :min_value
      t.decimal :max_value

      t.timestamps
    end
  end
end
