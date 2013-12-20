class Specialization < ActiveRecord::Base
  belongs_to :category
  belongs_to :college
  attr_accessible :award_type, :description, :duration, :fees, :mode_of_delivery, :specialization_name, :college_name, :city
  
end
