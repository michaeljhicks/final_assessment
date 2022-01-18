require './lib/budget'
require './lib/employee'
require './lib/department'

 RSpec.describe Budget do

  let(:budget) {Budget.new(2001)}
  let(:customer_service) {Department.new("Customer Service")}
  let(:bobbi) {Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})}
  let(:aaron) {Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})}
  let(:accounting) {Department.new("Accounting")}
  let(:sales) {Department.new("Sales")}
  let(:warehouse) {Department.new("Warehouse")}

 	it 'exists' do
 		expect(budget).to be_a(Budget)
 	end

 	it 'has attributes' do
 		expect(budget.year).to eq(2001)
 	end

  it "can add departments" do
    budget.add_department(accounting)
    budget.add_department(sales)
    budget.add_department(warehouse)
    expect(budget.list_departments).to eq([accounting, sales, warehouse])
  end

  it "can list departments with expenses under $500" do
    budget.add_department(accounting)
    budget.add_department(sales)
    budget.add_department(warehouse)
    accounting.expense(800)
    sales.expense(5000)
    warehouse.expense(450)
    expect(budget.departments_expenses_under_500).to eq([warehouse])
  end

  it "can list employees salaries" do
    

  end




 end
