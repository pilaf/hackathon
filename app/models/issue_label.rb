class IssueLabel < ActiveRecord::Base
  belongs_to :issue_id
  belongs_to :label_id
end
