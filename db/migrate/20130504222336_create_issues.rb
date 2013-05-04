class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.references :creator, index: true
      t.references :assignee, index: true
      t.float :latitude
      t.float :longitude
      t.references :city, index: true

      t.timestamps
    end
  end
end
