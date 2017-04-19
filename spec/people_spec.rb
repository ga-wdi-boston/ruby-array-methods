require 'spec_helper'
require 'people'

describe 'ArrayMethods::Labs::People' do
  let(:people) {ArrayMethods::Labs::People.new}
  let(:age) {25}

  it "collects Person objects from data/people.csv" do
    expect(people.people.count).to eq 2438
  end

  it "contains an array of Person objects" do
    expect(people.people.sample).to be_an_instance_of Person
  end

  describe '#people_older_than(age)' do
    it 'returns the count of people older than (age)' do
      expect(people.people_older_than(age)).to eq 1683
    end
  end

  describe '#people_younger_than(age)' do
    it 'returns the count of people older than (age)' do
      expect(people.people_younger_than(age)).to eq 724
    end
  end

  describe '#people_with_same_first_last_start_letter' do
    it 'returns count of people with same first and last name start letter' do
      expect(people.people_with_same_first_last_start_letter).to eq 132
    end
  end

  describe '#average_age' do
    it 'returns average age of people' do
      expect(people.average_age).to eq 39
    end
  end
end
