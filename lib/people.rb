# frozen_string_literal: true
require 'pry'
module ArrayMethods
  module Labs
    require 'csv'
    require_relative 'person.rb'
    class People
      attr_reader :people
      def initialize
        @people = []
        CSV.foreach('data/people.csv',
                    headers: true,
                    header_converters: ->(h) { h.downcase.to_sym }) do |person|
                      @people << Person.new(person.to_hash)
                    end
      end

      def people_older_than(age)
        people.select { |person| person.age > age }.count
      end

      def people_younger_than(age)
        people.select { |person| person.age < age }.count
      end

      def people_with_same_first_last_start_letter
        people.select { |person| person.given_name[0] == person.surname[0] }.count
      end

      def average_age
        people.map { |person| person.age }.reduce(0) { |memo, el| memo + el} / people.count
      end

   end
  end
end
