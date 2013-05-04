class Label < ActiveRecord::Base
  has_many :issue_labels
  has_many :issues, through: :issue_labels
end
