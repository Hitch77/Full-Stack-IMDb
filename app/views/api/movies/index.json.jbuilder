@movies.each do |movie|
    json.set! movie.id do
        json.extract! movie, :id, :title, :director_id
        json.photoUrl url_for(movie.photo)
    end
end
