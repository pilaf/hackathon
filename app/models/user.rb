class User < ActiveRecord::Base
  has_many :reported_issues, class_name: "Issue", foreign_key: "creator_id"
  has_many :assigned_issues, class_name: "Issue", foreign_key: "assignee_id"
  has_many :comments
end
