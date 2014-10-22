class CreateSeverities < ActiveRecord::Migration
  def change
    create_table :severities do |t|
      t.integer :weight
      t.string :color
      t.belongs_to :likelihood
      t.belongs_to :impact

      t.timestamps
    end
  end
end
