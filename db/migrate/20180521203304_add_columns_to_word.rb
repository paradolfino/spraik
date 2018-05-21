class AddColumnsToWord < ActiveRecord::Migration[5.2]
  def change
    add_column :words, :eng_pre, :string
    add_column :words, :nor_pre, :string
  end
end
