class CreateObjs < ActiveRecord::Migration[5.2]
  def change
    create_table :objs do |t|
      t.integer :obj_id
      t.string :obj
      t.integer :calorie
      t.timestamps
    end
  end
end
