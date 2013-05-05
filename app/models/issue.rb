class Issue < ActiveRecord::Base
  CLOSED = 0
  OPEN = 1
  STATUSES = [OPEN, CLOSED]

  belongs_to :creator, class_name: "User"
  belongs_to :assignee, class_name: "User"
  belongs_to :city
  has_many :comments
  has_many :photos, as: :imageable, dependent: :delete_all
  has_many :issue_labels, dependent: :delete_all
  has_many :labels, through: :issue_labels

  #Validations
  validates :title, :description, :latitude, :longitude, presence: true
  validates :latitude, :longitude, numericality: true
end
