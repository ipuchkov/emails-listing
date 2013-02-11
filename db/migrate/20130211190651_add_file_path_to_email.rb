class AddFilePathToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :file_path, :string
  end
end
