class Label < ActiveRecord::Base
  # Associations
  has_many :issue_labels, dependent: :delete_all
  has_many :issues, through: :issue_labels

  # Validations
  validates :name, :color, presence: true
end
