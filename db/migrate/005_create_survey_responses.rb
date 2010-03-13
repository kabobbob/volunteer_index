class CreateSurveyResponses < ActiveRecord::Migration
  def self.up
    create_table :survey_responses do |t|
      t.integer 'survey_id'
      t.integer 'category_id'
      t.integer 'subcategory_id'

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_responses
  end
end
