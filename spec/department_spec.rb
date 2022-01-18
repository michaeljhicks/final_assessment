require './lib/department'
require './lib/employee'
require 'pry'

RSpec.describe Department do
  context 'Iteration 2' do
    let(:customer_service) {Department.new("Customer Service")}
    let(:bobbi) {Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})}
    let(:aaron) {Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})}

    it "has a name" do
      expect(customer_service.name).to eq("Customer Service")
    end

    it "has employees" do
      expect(customer_service.employees).to eq([])
    end

    it "can hire employees" do
      customer_service.hire(bobbi)
      customer_service.hire(aaron)
      expect(customer_service.employees).to include(bobbi, aaron)
    end

    it "has expenses" do
      expect(customer_service.expenses).to eq(0)
    end

    it "can add expenses" do
      customer_service.expense(100)
      customer_service.expense(25)
      expect(customer_service.expenses).to eq(125)
    end

  end
end
