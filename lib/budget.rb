class Budget
attr_reader :year, :departments
  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(department)
    @departments << department
  end

  def list_departments
    @departments
  end

  def departments_expenses_under_500
    @departments.find_all do |department|
      department.expenses < 500
    end
  end

  def employee_salaries(employee)
    employees = @departments.map do |department|
      department.employees.each do |employee|
        employee.salary
      end
    end

  end
end
