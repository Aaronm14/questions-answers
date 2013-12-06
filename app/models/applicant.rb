class Applicant < ActiveRecord::Base
  validates :first_name, :last_name, :email, :answer1, :answer2, :answer3, :presence => {:message => "Can't have blank fields" }
end
