class MakeChangesToProducts < ActiveRecord::Migration[6.0]
  def change
    # rename the title column to name
    rename_column :products, :title, :name

    # change the description column to type of text
    change_column :products, :description, :text

    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, {precision: 7, scale: 2}

  end
end
