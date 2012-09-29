class CreateLibposts < ActiveRecord::Migration
  def change
    create_table :libposts do |t|
      t.string :text
      t.string :values

      t.timestamps
    end
  end
end
