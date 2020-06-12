class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :voucher, foreign_key: true
      t.string :path

      t.timestamps
    end
  end
end
