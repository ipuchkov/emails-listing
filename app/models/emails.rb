class Emails < ActiveRecord::Base
  attr_accessible :content, :destination, :sender, :subject
end
