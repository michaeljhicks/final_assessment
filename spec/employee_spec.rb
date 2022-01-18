require './lib/employee'
require 'pry'


RSpec.describe Employee do
  context 'iteration 1' do
    let(:bobbi) {Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})}
    let(:aaron) {Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})}

    it "has a name" do
      expect(bobbi.name).to eq("Bobbi Jaeger")
    end

    it 'has an age' do
      expect(bobbi.age).to eq(30)
    end

    it 'has a salary' do
      expect(bobbi.salary).to eq(100000)
    end

  end
end
