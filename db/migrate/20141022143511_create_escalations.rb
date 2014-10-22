class CreateEscalations < ActiveRecord::Migration
  def change
    create_table :escalations do |t|
      t.datetime :date
      t.text :text
      t.boolean :accepted
      t.belongs_to :risk
      t.belongs_to :from_unit, :class_name => 'Unit'
      t.belongs_to :to_unit, :class_name => 'Unit'
      t.belongs_to :from_user, :class_name => 'User'

      t.timestamps
    end
  end
end
