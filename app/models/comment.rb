class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :issue
  has_many :photos, as: :imageable
end
