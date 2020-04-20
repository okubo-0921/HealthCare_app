class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.string :name
      t.integer :weight
      t.float :BMI
      t.date :date
      t.integer :Proper
      t.integer :length
      t.integer :metabolism

      t.timestamps
    end
  end
end
