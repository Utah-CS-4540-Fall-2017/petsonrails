json.extract! pet, :id, :size, :is_housetrained, :owner_id, :animal_subtype_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
