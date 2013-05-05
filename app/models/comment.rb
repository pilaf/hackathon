class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :issue
  has_many :photos, as: :imageable, dependent: :delete_all
end
