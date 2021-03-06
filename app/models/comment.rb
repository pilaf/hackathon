class Comment < ActiveRecord::Base
  # Associations
  belongs_to :user
  belongs_to :issue
  has_many :photos, as: :imageable, dependent: :delete_all

  # Validations
  validates :content, presence: true
end
