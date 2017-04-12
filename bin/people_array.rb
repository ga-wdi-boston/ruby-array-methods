# frozen_string_literal: true

require_relative '../lib/people.rb'

people = People.new.people

p "Total people: #{people.count}"


