class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :event, foreign_key: true
      t.belongs_to :topic, foreign_key: true
      t.string :name
      t.text :description
      t.integer :status, limit: 1
      t.string :file

      t.timestamps
    end
  end
end
