class RenameTypeColumnToPostType < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :type, :format
  end
end
