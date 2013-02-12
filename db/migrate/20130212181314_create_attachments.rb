class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :email_id
      t.string :name
      t.string :path

      t.timestamps
    end
  end
end
