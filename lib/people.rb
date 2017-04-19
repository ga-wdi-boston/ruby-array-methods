# frozen_string_literal: true

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

      def people_older_than(age); end

      def people_younger_than(age); end

      def people_with_same_first_last_start_letter; end

      def average_age; end

    end
  end
end
