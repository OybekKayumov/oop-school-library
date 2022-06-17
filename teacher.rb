require_relative './person'

class Teacher < Person

  def initialize(specialization:, age:, name:, parent_permission: true)
    super(age: age, name: name, parent_permission: parent_permission)
    @specialization = specialization
    
  end

  def can_use_service?
    true
  end
end
