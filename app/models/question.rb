class Question < ActiveRecord::Base
  validates :content, :number, :presence => {:message => "Can't have blank fields" }
end
