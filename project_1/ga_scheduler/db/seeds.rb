# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


pr1 = Program.create(name: 'Web Development Immersive', description: '12 weeks.  All day, every day.  Learn the skills to become an entry-level web developer and the resources to get a job in this intensive program.', published: true)

pr2 = Program.create(name: 'User Experience Design Immersive', description: 'Ten weeks.  All day.  Monday through Friday.  Learn the skills of a UX designer and put them to work while building a comprehensive portfolio',published: true)

f1 = Format.create(name: "Full Time")
f2 = Format.create(name: "Part Time")
f3 = Format.create(name: "Classes and Workshops")

t1 = Topic.create(name: 'Web Developent')
t2 = Topic.create(name: 'Design')

f1.programs << pr1
f1.programs << pr2
t1.programs << pr1
t2.programs << pr2

c1 = Course.create(name: 'WDI 7', price: 8000, start_course: '30 Jun 2014 09:30:00 +0000', end_course: '19 Sep 2014 17:30:00 +0000', published: true, weekend: false)

c2 = Course.create(name: 'UXDI 4', price: 6000, start_course: '30 Jun 2014 09:30:00 +0000', end_course: '19 Sep 2014 17:30:00 +0000', published: true, weekend: false)

c3 = Course.create(name: 'WDI 300', price: 8000, start_course: '30 Jun 2014 09:30:00 +0000', end_course: '19 Sep 2014 17:30:00 +0000', published: true, weekend: false)

c4 = Course.create(name: 'UXDI 4000', price: 6000, start_course: '30 Jun 2014 09:30:00 +0000', end_course: '19 Sep 2014 17:30:00 +0000', published: true, weekend: false)

s1 = User.create(name: 'Toby Merlet', phone_number: '07590 675 666', paid: true, role: 'Student')
s2 = User.create(name: 'Malcom X', phone_number: '00000 555 999', paid: true, role: 'Student')
s3 = User.create(name: 'Mike Tyson', phone_number: '07444 1234 4321', paid: false, role: 'Student')
s4 = User.create(name: 'Michael Jackson', phone_number: '00000 666 000', paid: false, role: 'Student')

i1 = User.create(name: 'Geri', phone_number: '09809 9080 0980', role: 'instructor')
i2 = User.create(name: 'Mike', phone_number: '07890 0980 1234', role: 'instructor')

p1 = User.create(name: 'Julian', phone_number: '07432 4324 4324', role: 'producer')
p2 = User.create(name: 'Laura', phone_number: '07234 3214 3456', role: 'producer')


locationlon1 = Location.create(name: 'London - Back Hill', country: 'UK')
locationny1 = Location.create(name: 'New-York - 5th Avenue', country: 'USA')

classlon1 = Classroom.create(name: 'room1', seats: 20)
classlon2 = Classroom.create(name: 'room2', seats: 30)

classny1 = Classroom.create(name: 'room1', seats: 19)
classny2 = Classroom.create(name: 'room2', seats: 29)

locationlon1.classrooms << classlon1
locationlon1.classrooms << classlon2

locationny1.classrooms << classny1
locationny1.classrooms << classny2

classlon1.courses << c1
classlon2.courses << c2

classny1.courses << c3
classny2.courses << c4

pr1.courses << c1
pr2.courses << c2
pr1.courses << c3
pr2.courses << c4

c1.students << [s1, s2]
c2.students << [s3, s4]

c1.instructors << i1
c2.instructors << i2

c1.producers << p1
c2.producers << p2

