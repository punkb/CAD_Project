class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_out_path_for(resource_or_scope)
  request.referrer
end

def ensure_admin 
 unless current_user && current_user.admin? 
 render :text => "Access Error Message", :status => :unauthorized 
 end 
end


def show
  
   @country_id = params[:searchrequest][:id]   
   @category_id = params[:searchrequest][:category_id]
   @specialization_name = params[:searchrequest][:specialization_name]
   
    #perform a sanity check on all the above prior to injecting directly into the database

   @category_name=Category.select("category_name").where("id= ? ", @category_id)
   @country_name=Country.select("country_name").where("id= ? ", @country_id)
   #@Available_course=Specialization.joins(:college).where("colleges.country_id == ?",params[:searchrequest][:id]).where("specializations.specialization_name== ?",params[:searchrequest][:specialization_name]) 
  
  @Available_course=Specialization.find_by_sql("select * 
                                                  from specializations as s, colleges as c
                                                where s.college_id=c.id and 
                                                s.specialization_name='#{@specialization_name}' 
                                                and c.country_id='#{@country_id}'
                                                and s.category_id='#{@category_id}'")
 # if (@Available_course.length == 0)
        
   #@category_name=Category.select("category_name").where("id= ? ", @category_id)
   #@country_name=Country.select("country_name").where("id= ? ", @country_id)
   #@Available_course=Specialization.joins(:college).where("country_id == ?",params[:searchrequest][:id]).where("specialization_name== ?",params[:searchrequest][:specialization_name]) 
  # @Available_courses=Specialization.find_by_sql(:conditions => ["SELECT *
   #                                               from specializations Inner Join colleges
    #                                              where colleges.country_id== ?  
                                                 #and specializations.id==?", @country_id, @specialization_name]
  end

  def contact
    
  end

  def about
    
  end



end
