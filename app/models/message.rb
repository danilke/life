class Message < ActiveRecord::Base
   attr_accessible :text, :created_at, :from

   belongs_to :model
end
