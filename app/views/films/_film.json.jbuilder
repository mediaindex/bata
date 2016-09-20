json.extract! film, :id, :titre, :synopsis, :date_sortie, :Producteur, :note, :casting, :origine, :created_at, :updated_at
json.url film_url(film, format: :json)