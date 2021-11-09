    json.extract! @celeb, :id, :name, :bio, :birthdate, :birthplace
    json.photoUrl url_for(@celeb.photo)
