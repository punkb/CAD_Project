class Country < ActiveRecord::Base
  attr_accessible :country_name, :visa_detail
  has_many :colleges
  has_many :categories
  has_many :jobs
end
