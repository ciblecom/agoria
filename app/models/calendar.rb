class Calendar < ActiveRecord::Base
  
  attr_accessible :name, :user_id
  
  validates :user_id, presence: true
  
  belongs_to :user
  
end
