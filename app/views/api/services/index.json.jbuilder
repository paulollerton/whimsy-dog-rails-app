# json.array! @services.each do |service|
#   json.partial! 'service.json.jbuilder', service: service
# end

json.array! @services do |service|
  json.id service.id
  json.name service.name
  json.price service.price
  json.description service.description
  json.image_url service.image_url
  json.time service.time
end