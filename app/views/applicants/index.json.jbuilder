json.array!(@applicants) do |applicant|
  json.extract! applicant, :first_name, :last_name, :email, :answer1, :answer2, :answer3
  json.url applicant_url(applicant, format: :json)
end
