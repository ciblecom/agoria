class Event < ActiveRecord::Base
  attr_accessible :name, :datee
  
   belongs_to :calendar
  
end
