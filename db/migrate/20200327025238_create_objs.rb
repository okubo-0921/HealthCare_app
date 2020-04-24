class CreateObjs < ActiveRecord::Migration[5.2]
  def change
    create_table :objs do |t|
      t.integer :obj_id
      t.string :obj, null: false
      t.integer :calorie, null: false
      t.timestamps
    end

    add_index :objs, :obj,                 unique: true
  end
end
