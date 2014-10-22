class CreateRiskDetails < ActiveRecord::Migration
  def change
    create_table :risk_details do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.text :change_reason
      t.text :cause
      t.text :event
      t.text :consequences
      t.boolean :closed
      t.text :comments

      t.belongs_to :editor, :class_name => 'User'
      t.belongs_to :owner, :class_name => 'User'
      t.belongs_to :likelihood
      t.belongs_to :impact
      t.belongs_to :category
      t.belongs_to :risk

      t.timestamps
    end
  end
end
