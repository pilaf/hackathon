class Issue < ActiveRecord::Base
  belongs_to :creator
  belongs_to :assignee
  belongs_to :city
end
