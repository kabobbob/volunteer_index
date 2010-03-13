class SurveyResponse < ActiveRecord::Base
  belongs_to :survey
  belongs_to :category
  belongs_to :subcategory
  
  validates_presence_of :survey_id, :category_id
end
