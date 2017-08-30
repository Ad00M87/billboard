class CreateBillboardCharts < ActiveRecord::Migration[5.1]
  def change
    create_table :billboard_charts do |t|
      t.string :name

      t.timestamps
    end
  end
end
