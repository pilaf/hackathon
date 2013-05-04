class Issue < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  belongs_to :assignee, class_name: "User"
  belongs_to :city
  has_many :comments
  has_many :photos, as: :imageable
  has_many :issue_labels
  has_many :labels, through: :issue_labels
end
