json.extract! @movie, :id, :title, :year, :description
json.photoUrl url_for(@movie.photo)