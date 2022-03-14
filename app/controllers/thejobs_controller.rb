class ThejobsController < ApplicationController
  
  skip_before_action :verify_authenticity_token

  def create
    new_job = Job.create(url: params[:url], 
                         employer_name: params[:employer_name], 
                         employee_description: params[:employee_description],
                         job_title: params[:job_title],
                         job_description: params[:job_description],
                         year_of_experience: params[:year_of_experience],
                         education_requirement: params[:education_requirement],
                         industry: params[:industry],
                         base_salary: params[:base_salary],
                         employment_type_id: params[:employment_type_id] 
                        )

    render json: params
  end
end
