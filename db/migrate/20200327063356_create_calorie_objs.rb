class CreateCalorieObjs < ActiveRecord::Migration[5.2]
  def change
    create_table :calorie_objs do |t|
      t.references :calorie, foreign_key: true
      t.references :obj, foreign_key: true

      t.timestamps
    end
  end
end
