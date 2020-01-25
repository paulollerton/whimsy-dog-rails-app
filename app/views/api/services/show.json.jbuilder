# json.partial! 'service.json.jbuilder', recipe: @recipe

json.id @service.id
json.name @service.name
json.price @service.price
json.description @service.description
json.image_url @service.image_url
json.time @service.time