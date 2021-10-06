@celebs.each do |celeb|
    json.set! celeb.id do
        json.extract! celeb, :id, :name
        json.photoUrl url_for(celeb.photo)
    end
end
