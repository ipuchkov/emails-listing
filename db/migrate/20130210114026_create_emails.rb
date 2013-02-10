class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :subject
      t.string :sender
      t.string :destination
      t.text :content

      t.timestamps
    end
  end
end
