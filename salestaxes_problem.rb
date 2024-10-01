# Base class: Employee
class Employee
  attr_reader :name, :base_salary

  def initialize(name, base_salary)
    @name = name
    @base_salary = base_salary
  end

  # Method to calculate salary (for regular employee, just the base salary)
  def calculate_salary
    base_salary
  end

  # Method to return the role
  def role
    "Employee"
  end
end

# Subclass: Manager
class Manager < Employee
  # Override calculate_salary to add a 30% bonus to the base salary
  def calculate_salary
    base_salary + (base_salary * 0.30)
  end

  # Override role method
  def role
    "Manager"
  end
end

# Subclass: Developer
class Developer < Employee
  # Override calculate_salary to add a 20% bonus to the base salary
  def calculate_salary
    base_salary + (base_salary * 0.20)
  end

  # Override role method
  def role
    "Developer"
  end
end

# Polymorphism in action: payroll method that accepts an array of employees
def payroll(employees)
  employees.each do |employee|
    puts "#{employee.name} (#{employee.role}) - Salary: $#{employee.calculate_salary}"
  end
end

# Example usage
employees = [
  Employee.new("John Doe", 50000),
  Manager.new("Jane Smith", 80000),
  Developer.new("Alice Johnson", 70000)
]

payroll(employees)
