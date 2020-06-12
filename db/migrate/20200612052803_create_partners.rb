class CreatePartners < ActiveRecord::Migration[5.1]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :url
      t.boolean :gold, default: 0

      t.timestamps
    end
  end
end
