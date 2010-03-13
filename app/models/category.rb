class Category < ActiveRecord::Base
  has_many :subcategories
  has_many :survey_responses
  
  def ordered_subcategories
    self.subcategories.find(:all, :order => 'name')
  end
end
