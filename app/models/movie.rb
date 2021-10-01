class Movie < ApplicationRecord
    validates :title, :year, :description, presence: true
    has_one_attached :photo
end