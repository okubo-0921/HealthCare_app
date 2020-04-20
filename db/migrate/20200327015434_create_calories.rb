class CreateCalories < ActiveRecord::Migration[5.2]
  def change
    create_table :calories do |t|
      t.string :name
      t.integer :calorie
      t.integer :calorie_id
      t.timestamps
    end
  end
end
