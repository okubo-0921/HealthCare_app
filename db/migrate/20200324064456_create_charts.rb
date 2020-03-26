class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.string :name
      t.integer :weight
      t.real :BMI
      t.date :date

      
      t.integer :Proper
      t.integer :length

      t.timestamps
    end
    add_index :charts, :date,                 unique: true
  end
end
