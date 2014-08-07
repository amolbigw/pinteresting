json.array!(@globalcontacts) do |globalcontact|
  json.extract! globalcontact, :id, :firstname, :lastname, :email, :twitterid, :linkedin, :facebook
  json.url globalcontact_url(globalcontact, format: :json)
end
