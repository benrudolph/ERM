class CreateCategoryHeadings < ActiveRecord::Migration
  def change
    create_table :category_headings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :label
      t.text :description
      t.integer :order
      t.belongs_to :category

      t.timestamps
    end
  end
end
