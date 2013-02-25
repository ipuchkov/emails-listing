class Attachment < ActiveRecord::Base
  belongs_to :email
  attr_accessible :name, :path, :email
end
