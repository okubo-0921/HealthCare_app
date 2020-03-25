class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.string :name
      t.integer :weight
      t.integer :length
      t.integer :BMI
      t.datetime :date

      t.timestamps
    end
  end
end
