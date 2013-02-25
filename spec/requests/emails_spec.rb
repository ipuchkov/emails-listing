require 'spec_helper'

describe "Emails" do
  let!(:email) do
    Email.create!(subject: "creation test",
                  content: "email created by rspec",
                  sender: "rspec_creation_test")
  end

  let!(:attachment) do 
    Attachment.create!(email: email,
                       name: "file_name",
                       path: "file_path")
  end

  describe "GET /" do
    before { visit emails_path }
    
    it "find subject" do
      page.should have_content(email.subject)
    end

    it "find sender" do
      page.should have_content(email.sender)
    end  
  end
  
  describe "GET /show" do
    before { visit email_path(email.id) }

    it "find email content" do
      page.should have_content(email.content)
    end

    it "find email sender" do
      page.should have_content(email.sender)
    end

    it "find email attachment link" do
      save_and_open_page
      page.should have_link(attachment.name)
    end
  end
end
	