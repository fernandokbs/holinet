class Course < ApplicationRecord
  belongs_to :teacher
  has_many_attached :videos
end
