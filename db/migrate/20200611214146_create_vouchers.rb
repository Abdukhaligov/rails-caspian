class CreateVouchers < ActiveRecord::Migration[5.1]
  def change
    create_table :vouchers do |t|
      t.belongs_to :event, foreign_key: true
      t.belongs_to :membership, foreign_key: true
      t.string :name
      t.text :description
      t.string :template
      t.boolean :uniq

      t.timestamps
    end
  end
end
