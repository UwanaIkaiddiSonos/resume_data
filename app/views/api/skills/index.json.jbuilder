json.array! @skills.each do |skill|
  json.id skill.id
  json.skill skill.skill_name
end