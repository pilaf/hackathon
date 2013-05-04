class CreateIssueLabels < ActiveRecord::Migration
  def change
    create_table :issue_labels do |t|
      t.references :issue_id, index: true
      t.references :label_id, index: true

      t.timestamps
    end
  end
end
