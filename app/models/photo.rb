class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :albums, optional: true
end
