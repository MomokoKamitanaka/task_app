class RenameListColumnToLists < ActiveRecord::Migration[5.2]
  def change
    rename_column :lists, :list, :title
  end
end
