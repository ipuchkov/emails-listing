class Email < ActiveRecord::Base
  has_many :attachments
  attr_accessible :content, :destination, :sender, :subject
  def self.fetch_new
    mails = Mail.all
    mails.each do |mail|
  	  email = Email.create(subject: mail.subject,
                           content: mail.text_part.body.to_s,
                           sender: mail.from.first)
      mail.attachments.each do |attachment|
        filename = attachment.filename
        Attachment.create(email: email, name: filename, path: "/attachments/" + filename)
        begin
          File.open("public/attachments/" + filename, "w+b", 0644) do |f| 
            f.write attachment.body.decoded
          end
        rescue Exception => e
          puts "Unable to save data for #{filename} because #{e.message}"
        end
      end
    end
  end
end
