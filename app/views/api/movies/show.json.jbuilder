    json.extract! @movie, :id, :title, :year, :description, :duration, :film_rating, :director_id, :writer_id, :actor_id
    json.photoUrl url_for(@movie.photo)
