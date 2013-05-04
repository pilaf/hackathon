class Photo < ActiveRecord::Base
  belongs_to :imageable
end
