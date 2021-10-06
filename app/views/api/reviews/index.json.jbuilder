@reviews.each do |review|
    json.set! review.id do
        json.extract! review, :id, :heading, :review, :spoilers, :rating, :user_id, :movie_id
    end
end
