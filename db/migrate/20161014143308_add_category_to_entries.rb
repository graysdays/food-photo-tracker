class AddCategoryToEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :category, :string
  end
end
