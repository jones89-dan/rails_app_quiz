json.job do	
	json.employer_name @show_job.employer_name
	json.employer_description @show_job.employer_description
	json.job_title @show_job.job_title
	json.job_description @show_job.job_description
	json.year_of_experience @show_job.year_of_experience
	json.education_requirement @show_job.education_requirement
	json.industry @show_job.industry
	json.base_salary @show_job.base_salary
	json.employment_type_id @show_job.employment_type_id
end
