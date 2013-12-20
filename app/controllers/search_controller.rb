 class SearchController < ApplicationController
  
  def index

    @categories = Category.all
    #@colleges = College.all
    @countries = Country.all 
    @specializations = Specialization.all 

  end
  def searchcourse
  end

  def show_job
#attr_accessable :country_id, :country_name, :category_id, :category_name

  @jobs = Job.all
  @category_id = params[:category_id]  #category ID passed from ApplicationController
  @country_id = params[:country_id]
   
  @category_name=Category.select("category_name").where("id= ? ", @category_id)
  @country_name=Country.select("country_name").where("id= ? ", @country_id)
  #Number of available job for selected category and country from model "Jobs" and column"no_of_job"
  @Available_jobs = Job.where({category_id: @category_id, country_id: @country_id})
  #job_array = []
  #job_array.push @Available_jobs
  @country_name.each do |c|
 @country_expense = Livingexpense.where("Country_name = ? ",c.country_name)
 end 
  @livingexpense= Livingexpense.find_by_sql("select * from Livingexpenses as l  where l.Country_name= '#{@country_name}'") 
  #@array = Array.new()
  #@array = @Available_jobs.number_of_job
  
  
  end
end

