class AddStatusToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :status, :integer, default: 1
  end
end
