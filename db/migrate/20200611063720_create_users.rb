class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.belongs_to :reference, foreign_key: true
      t.belongs_to :degree, foreign_key: true
      t.belongs_to :region, foreign_key: true
      t.text :description
      t.string :name
      t.string :email
      t.boolean :admin, default: 0
      t.boolean :public, default: 1
      t.integer :rank, limit: 1
      t.string :phone
      t.string :company
      t.string :position
      t.string :password_digest

      t.timestamps
    end
  end
end
