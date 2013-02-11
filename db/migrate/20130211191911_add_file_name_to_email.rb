class AddFileNameToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :file_name, :string
  end
end
