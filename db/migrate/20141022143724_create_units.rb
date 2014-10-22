class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :name
      t.string :code

      t.belongs_to :sub_unit, :class_name => 'Unit'

      t.timestamps
    end
  end
end
