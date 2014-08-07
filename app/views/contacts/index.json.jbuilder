json.array!(@contacts) do |contact|
  json.extract! contact, :id, :globalID, :points
  json.url contact_url(contact, format: :json)
end
