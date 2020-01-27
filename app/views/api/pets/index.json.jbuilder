json.array! @pets do |pet|
  json.id pet.id
  json.pet_name pet.pet_name
  json.user_id pet.user_id
  json.username pet.username
  json.breed pet.breed
  json.size pet.size
  json.age pet.age
  json.about_me pet.about_me
  json.notes pet.notes
end