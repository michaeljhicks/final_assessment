class Division
  attr_reader :name,
              :departments

  def initialize(name)
    @name = name
    @departments = []
  end

  def add_dept(department)
    @departments << department
  end

  def depts_with_multiple_employees
    @departments.find_all do |department|
      department.employees.count >= 2
    end
  end

  def list_all_employees_names
    employees = []
    @departments.each do |department|
      department.employees.map do |employee|
        employees << employee.name
      end
    end
    return employees
  end

end
