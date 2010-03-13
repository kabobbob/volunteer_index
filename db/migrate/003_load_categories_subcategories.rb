require 'active_record/fixtures'

class LoadCategoriesSubcategories < ActiveRecord::Migration
  def self.up
    down
    
    directory = File.join(File.dirname(__FILE__), "data" )
    Fixtures.create_fixtures(directory, "categories" )
    Fixtures.create_fixtures(directory, "subcategories" )
  end

  def self.down
    Category.delete_all
    Subcategory.delete_all
  end
end
