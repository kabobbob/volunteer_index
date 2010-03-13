class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many :survey_responses
  
  validates_presence_of :category_id
end
