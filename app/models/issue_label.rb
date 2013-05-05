class IssueLabel < ActiveRecord::Base
  # Associations
  belongs_to :issue
  belongs_to :label
end
