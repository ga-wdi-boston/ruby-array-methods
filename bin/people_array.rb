# frozen_string_literal: true

require_relative '../lib/people.rb'

people = People.new.people

p people.count

######
# Code Along: People
######
total = people.count.to_f

female = people.select { |person| person.gender == 'f' }.length
female_percentage = female / total
p "female total: #{female}, total: #{total},
  female_percentage: #{female_percentage}"

######
# Lab: People
######
older_people = people.select { |person| person.age > 26 }.length
p "older people: #{older_people}"

younger_people = people.select { |person| person.age < 26 }.length
p "younger people: #{younger_people}"

letter_matches = people.select { |person| same_start_letter(person) }.length
p "letter_matches: #{letter_matches}"

def same_start_letter(person)
  person.given_name[0] == person.surname[0]
end

average_age =
  people.reduce(0) { |accumulator, element| accumulator + element.age } / total

p "avg age: #{average_age}"

p "Total people: #{people.count}"
