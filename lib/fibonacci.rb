# frozen_string_literal: true
module ArrayMethods
  module Labs 
    class Fibonacci 
      attr_reader :fibs
      def initialize
        @fibs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
      end

      def fibs
        @fibs
      end

      def product_of_elements

        # excluding 0
        fibs.slice(1, fibs.length).reduce(1) do |memo, el|
          memo * el
        end
      end

      def product_of_even_elements
        fibs.select { |el| el.even? }.slice(1, fibs.length).reduce(1) do |memo, el|
          memo * el
        end
      end

      def sum_of_odd_elements
        fibs.select { |el| el.odd? }.reduce(0) do |memo, el|
          memo + el
        end
      end

    end
  end
end
