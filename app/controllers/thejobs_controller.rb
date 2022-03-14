class ThejobsController < ApplicationController
  
  skip_before_action :verify_authenticity_token

  def create
    new_job = Job.create(url: params[:url], employer_name: params[:employer_name])

    render json: params
  end
end
