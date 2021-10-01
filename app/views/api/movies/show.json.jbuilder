json.extract! @movie, :id, :title, :year, :description, :duration, :film_rating
json.photoUrl url_for(@movie.photo)