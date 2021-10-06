class Celeb < ApplicationRecord
    validates :name, :bio, :birthdate, :birthplace, presence: true
    has_one_attached :photo
    
end