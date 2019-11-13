class RemoveIsbnFromProducts < ActiveRecord::Migration[6.0]
  def change
    # remove isbn
    remove_column :products, :isbn, :string
  end
end
