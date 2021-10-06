    json.extract! @celeb, :name, :bio, :birthdate, :birthplace
    json.photoUrl url_for(@celeb.photo)
