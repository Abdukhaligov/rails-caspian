class CreateEventsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :events_users do |t|
      t.belongs_to :event, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.belongs_to :membership, foreign_key: true
      t.integer :status, limit: 1
    end
  end
end
