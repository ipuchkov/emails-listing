class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :subject
      t.text :content
      t.string :sender
      t.string :destination

      t.timestamps
    end
  end
end
