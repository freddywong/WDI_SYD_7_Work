class Artist < ActiveRecord::Base
has_many :paintings
  validates :first_name, :last_name, :nationality, :period, :image, :date_of_birth, presence: true 
  
end
