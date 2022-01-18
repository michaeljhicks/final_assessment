class Department
  attr_reader :name,
              :employees,
              :hire,
              :expenses

  def initialize(name)
    @name = name
    @employees = []
    @expenses = 0
  end

  def hire(employee)
    @employees << employee
  end

  def expenses
    @expenses
  end

  def expense(amount)
    @expenses += amount
  end

end
