class Email < ActiveRecord::Base
  attr_accessible :content, :destination, :sender, :subject
end
