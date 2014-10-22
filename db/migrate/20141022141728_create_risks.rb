class CreateRisks < ActiveRecord::Migration
  def change
    create_table :risks do |t|
      t.string :name
      t.belongs_to :user
      t.belongs_to :unit

      t.timestamps
    end
  end
end
