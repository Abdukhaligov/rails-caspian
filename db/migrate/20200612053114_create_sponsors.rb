class CreateSponsors < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsors do |t|
      t.belongs_to :degree, foreign_key: true
      t.string :name
      t.text :description
      t.string :company
      t.string :position

      t.timestamps
    end
  end
end
