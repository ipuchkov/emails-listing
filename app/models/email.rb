class Email < ActiveRecord::Base
  attr_accessible :content, :destination, :sender, :subject, :file_path, :file_name
end
