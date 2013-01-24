class Calendar < ActiveRecord::Base
  
  attr_accessible :name, :user_id, :description, :logo, :events_attributes, :month
  
  validates :user_id, presence: true
  validates :month, presence: true
  
  belongs_to :user
  has_many :events, :dependent => :destroy
  accepts_nested_attributes_for :events, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true

  mount_uploader :logo, LogoUploader
  
end
