class Photo < ActiveRecord::Base
  # Associations
  belongs_to :imageable, :polymorphic => true

  # Validations
  validates :image, :imageable_type, presence: true
end
