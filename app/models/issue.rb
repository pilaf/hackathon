class Issue < ActiveRecord::Base
  CLOSED = 0
  OPEN = 1
  STATUSES = [OPEN, CLOSED]

  # Associations
  belongs_to :creator, class_name: "User"
  belongs_to :assignee, class_name: "User"
  belongs_to :city
  has_many :comments
  has_many :photos, as: :imageable, dependent: :delete_all
  has_many :issue_labels, dependent: :delete_all
  has_many :labels, through: :issue_labels

  # Validations
  validates :title, :description, presence: true
  validates :latitude, numericality: true, if: :latitude
  validates :longitude, numericality: true, if: :longitude

  # Methods
  def add_labels(label_ids)
    return unless label_ids
    label_ids.each do |label_id|
      self.issue_labels.create(label_id: label_id)
    end
  end
end
