class Painting < ActiveRecord::Base
  belongs_to :artist
    validates :title, :year, :medium, :style, :image, presence: true
  
end
