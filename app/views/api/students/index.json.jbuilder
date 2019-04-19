json.array! @students.each do |student|
  json.partial! "student.json.jbuilder", inside_student: student
end
