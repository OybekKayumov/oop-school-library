require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(age:, name:, parent_permission:, classroom: nil)
    super(age: age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
