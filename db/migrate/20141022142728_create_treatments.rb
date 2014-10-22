class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.boolean :proactive
      t.text :text
      t.datetime :target_date
      t.belongs_to :risk

      t.timestamps
    end
  end
end
