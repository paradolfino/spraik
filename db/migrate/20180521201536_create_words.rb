class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :eng_si
      t.string :nor_si
      t.string :eng_pl
      t.string :nor_pl
      t.string :eng_def_si
      t.string :nor_def_si
      t.string :eng_def_pl
      t.string :nor_def_pl
      t.string :eng_past
      t.string :nor_past
      t.string :eng_fut
      t.string :nor_fut
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
