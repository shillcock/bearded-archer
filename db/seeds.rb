# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
puts "==== Creating workshop 1"
w1 = Workshop.create title: "Workshop 1"

puts "==== Creating lessons for workshop 1"
5.times do |x|
  Lesson.create title: "Lession #{x+10}", lesson_number: x+1, workshop: w1
end

puts "==== Creating workshop 2"
w2 = Workshop.create title: "Workshop 2"

puts "==== Creating lessons for workshop 2"
5.times do |x|
  Lesson.create title: "Lesson #{x+20}", lesson_number: x+1, workshop: w2
end

puts "==== Creating meetings for section 1"
s1 = Section.new workshop: w1
w1.lessons.each do |l|
  s1.meetings.build date: 1.day.from_now + l.lesson_number.days, lesson: l
end
s1.save!

puts "==== Creating meetings for section 2"
s2 = Section.new workshop: w1
w1.lessons.each do |l|
  s2.meetings.build date: 1.month.from_now + l.lesson_number.days, lesson: l
end
s2.save!
