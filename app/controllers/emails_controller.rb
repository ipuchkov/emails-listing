class EmailsController < ApplicationController 
  
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
  end

  def fetch
    attach_dir = "public/attachments/"
    file_dir = "/attachments/"
    mails = Mail.all
    mails.each do |mail|
  	  email = Email.create(subject: mail.subject, content: mail.text_part.body.to_s, sender: mail.from.first)
      mail.attachments.each do |attachment|
        filename = attachment.filename
        e = Email.find(email.id)
        e.update_attributes(file_name: filename, file_path: file_dir + filename)
        begin
          File.open(attach_dir + filename, "w+b", 0644) {|f| f.write attachment.body.decoded}
        rescue Exception => e
          puts "Unable to save data for #{filename} because #{e.message}"
        end
      end
    end
  end

end