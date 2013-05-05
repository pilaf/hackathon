class Label < ActiveRecord::Base
  has_many :issue_labels, dependent: :delete_all
  has_many :issues, through: :issue_labels
end
