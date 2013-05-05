class AddCollaboratorFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :collaborator, :boolean, default: false, index: true
  end
end