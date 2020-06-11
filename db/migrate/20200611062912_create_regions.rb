class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|
      t.string :name_en
      t.string :desc_en
      t.string :name_ru
      t.string :desc_ru
      t.string :cc
      t.string :mask

      t.timestamps
    end
  end
end
