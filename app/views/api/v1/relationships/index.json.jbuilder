
json.array! @relationships.each do |relationship|
  json.id relationship.id
  json.total_time relationship.total_time
  json.url relationship.website.website_url

end