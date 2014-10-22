class CreateUnitTypes < ActiveRecord::Migration
  def change
    create_table :unit_types do |t|
      t.string :unit_type
      t.belongs_to :unit

      t.timestamps
    end
  end
end
