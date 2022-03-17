class ThejobsController < ApplicationController
  
  skip_before_action :verify_authenticity_token

  def create
    @new_job = Job.create(url: params[:url], 
                         employer_name: params[:employer_name], 
                         employer_description: params[:employer_description],
                         job_title: params[:job_title],
                         job_description: params[:job_description],
                         year_of_experience: params[:year_of_experience],
                         education_requirement: params[:education_requirement],
                         industry: params[:industry],
                         base_salary: params[:base_salary],
                         employment_type_id: params[:employment_type_id] 
                        )

    render 'thejobs/create'
  end

  def show
    @show_job = Job.find_by(id: params[:id])
    
    render 'thejobs/show'
  end 

  def index
    @show_index = Job.all
    
    render 'thejobs/index'
  end
end
