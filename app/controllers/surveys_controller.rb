class SurveysController < ApplicationController
  def new
    # pull categories
    categories = Category.find(:all, :order => 'name')
    
    # split categories
    split = 14
    @categories_1 = categories.slice(0, split)
    @categories_2 = categories.slice(split, categories.length - 1)
  end
  
  def create
    # wrap all in transcation
    Survey.transaction do
      # create new survey
      survey = Survey.create!
      
      # loop through selections
      params[:selections].each do |selection|
        # parse selection choice
        selection.each do |key, val|
          category_data = key.split(':')
          
          # category/subcategory
          if category_data.length == 2
            category    = category_data[0]
            subcategory = category_data[1]
          else
            category    = category_data[0]
            subcategory = ''
          end
          
          #insert responses
          SurveyResponse.create!({
            :survey_id      => survey.id,
            :category_id    => category,
            :subcategory_id => subcategory
          })
        end
      end
    end
  end
end
