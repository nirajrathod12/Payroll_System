
class Employee
  
  attr_accessor:name, :empsalary
  def initialize(name,empsalary)
    @name = name
    @empsalary = empsalary
  end

  def role
    return Employee
  end
  def calculate_salary
    return @empsalary
  end
  


end

class Manager < Employee
  def calculate_salary
    sal = empsalary
    sal += sal * 0.03
    return sal
  end
  def role
    return 'Manager'
  end
end

class Developer < Employee
  def calculate_salary
    sal = empsalary
    sal += sal * 0.02
    return sal
  end
  def role
    return 'Developer'
  end
end

def payroll(employee)
 employee.each do |employee|
  puts "Employee name : #{employee.name} , dasignation(#{employee.role}) , Employee Salary : #{employee.calculate_salary}"
 end
end



employee = [

  Manager.new("shivam",22000),
  Developer.new("manish",50000),
  Manager.new("niraj",35000),
  Developer.new("savan",20000)
]

payroll(employee)
