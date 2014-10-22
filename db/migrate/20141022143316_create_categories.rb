class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :label
      t.text :description
      t.integer :order
      t.belongs_to :risk_detail

      t.timestamps
    end
  end
end
