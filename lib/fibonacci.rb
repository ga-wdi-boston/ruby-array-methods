# frozen_string_literal: true

module ArrayMethods
  module Labs 
    class Fibonacci 
      attr_reader :fibs
      def initialize
        @fibs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
      end

      # def times_two(number)
      #   number * 2
      # end

      # twice_fibs = fibs.map { |fib| times_two(fib) }
      # twice_fibs = fibs.map { |fib| fib * 2}

      # fibs.map do |fib|
      #   fib * 2
      # end

      #####
      # Code Along: reduce
      #####
      # sum
      sum_fibs = fibs.reduce(0) { |accumulator, element| accumulator + element }
      p sum_fibs

      # other syntax
      sum_fibs_other = fibs.reduce(:+)
      p sum_fibs_other

      #####
      # Lab: Fibonacci Calculations
      #####
      # product
      prod_fibs =
        fibs.slice(1, fibs.length).reduce(1) do |accumulator, element|
          accumulator * element
        end
      p prod_fibs

      # other syntax
      prod_fibs_other =
        fibs.slice(1, fibs.length).reduce(:*)
      p prod_fibs_other

      # sum odd
      sum_odd =
        fibs.select(&:odd?).reduce(0) do |accumulator, element|
          accumulator + element
        end
      p sum_odd

      # other syntax
      sum_odd_other =
        fibs.select(&:odd?).reduce(:+)
      p sum_odd_other

      # prod even
      prod_even =
        fibs.select { |num| num.even? && num.positive? }.reduce(1) do |memo, el|
          memo * el
        end
      p prod_even

      # other syntax
      prod_even_other =
        fibs.select { |num| num.even? && num.positive? }.reduce(:*)
      p prod_even_other
