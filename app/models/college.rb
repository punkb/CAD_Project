class College < ActiveRecord::Base
  belongs_to :country
  attr_accessible :college_contact, :college_location, :college_name
  has_many :specializations
end
