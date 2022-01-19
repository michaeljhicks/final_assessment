require './lib/division'
require './lib/department'
require './lib/employee'

 RSpec.describe Division do
 	before(:each) do
 		@division1 = Division.new("Northern New Mexico")
 		@division2 = Division.new("Southern Colorado")
 		@accounting = Department.new("Accounting")
 		@sales = Department.new("Sales")
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    @dani = Employee.new({name: "Dani Coleman", age: "33", salary: "180000"})
    @chris = Employee.new({name: "Chris Simmons", age: "32", salary: "150000"})
    @professor_t = Employee.new({name: "Richard Tillies", age: "34", salary: "250000"})
 	end

 	it 'exists' do
 		expect(@division1).to be_a(Division)
 		expect(@division2).to be_a(Division)
 	end

 	it 'has attributes' do
 		expect(@division1.name).to eq("Northern New Mexico")
 		expect(@division2.name).to eq("Southern Colorado")
 	end

  it 'can add departments' do
    @division1.add_dept(@accounting)
    @division1.add_dept(@sales)
    @division2.add_dept(@sales)

    expect(@division1.departments).to eq([@accounting, @sales])
    expect(@division2.departments).to eq([@sales])
  end

  it 'can list all departments with multiple employees' do
    @division1.add_dept(@accounting)
    @division1.add_dept(@sales)
    @accounting.hire(@bobbi)
    @accounting.hire(@aaron)
    @sales.hire(@dani)
    @sales.hire(@chris)
    @division2.add_dept(@sales)
    @sales.hire(@professor_t)

    expect(@division1.depts_with_multiple_employees).to eq([@accounting, @sales])
    expect(@division2.depts_with_multiple_employees).to eq([@sales])
  end

  it 'can list all employees names' do
    @division1.add_dept(@accounting)
    @division1.add_dept(@sales)
    @accounting.hire(@bobbi)
    @accounting.hire(@aaron)
    @sales.hire(@dani)
    @sales.hire(@chris)

    expected = (["Bobbi Jaeger", "Aaron Tanaka", "Dani Coleman", "Chris Simmons"])

    expect(@division1.list_all_employees_names).to eq(expected)
  end



 end
