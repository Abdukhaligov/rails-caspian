class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.text :address
      t.datetime :date
      t.boolean :active, default: 0

      t.timestamps
    end
  end
end
