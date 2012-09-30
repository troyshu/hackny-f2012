class Change < ActiveRecord::Migration
  def up
  	add_column :libposts, :text_framework_array, :string
  	add_column :libposts, :keywords_array, :string
  	remove_column :libposts, :values
  end

  def down
  end
end
