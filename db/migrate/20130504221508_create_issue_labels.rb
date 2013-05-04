class CreateIssueLabels < ActiveRecord::Migration
  def change
    create_table :issue_labels do |t|
      t.references :issue, index: true
      t.references :label, index: true

      t.timestamps
    end
  end
end
