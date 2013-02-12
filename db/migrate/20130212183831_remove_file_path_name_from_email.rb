class RemoveFilePathNameFromEmail < ActiveRecord::Migration
  def up
    remove_column :emails, :file_path
    remove_column :emails, :file_name
  end

  def down
    add_column :emails, :file_name, :string
    add_column :emails, :file_path, :string
  end
end
