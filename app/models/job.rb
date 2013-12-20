class Job < ActiveRecord::Base
  belongs_to :country
  belongs_to :category
  attr_accessible :date, :number_of_job
end
