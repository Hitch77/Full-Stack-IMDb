class Review < ApplicationRecord
    validates :heading, :review, presence: true
    validates :spoilers, inclusion: { in: [true, false] }
    validates :rating, inclusion: { in: (1..10) }

    belongs_to :user
    belongs_to :movie

end
