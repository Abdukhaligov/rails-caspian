class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.belongs_to :topic, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
