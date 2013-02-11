class EmailsController < ApplicationController 
  
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
  end

  def fetch
    mails = Mail.all
    mails.each do |mail|
  	  Email.create(:subject => mail.subject, :content => mail.html_part.body.to_s, :sender => mail.from.first)
    end
  end

end