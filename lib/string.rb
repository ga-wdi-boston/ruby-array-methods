# frozen_string_literal: true

# Add features to string
class String
  def normalize_words
    # The word list normalized (all uppercase with punctuation removed)
    gsub(/[^\w\s\d]/, '').upcase
  end

  def unique_words
    Set.new(normalize_words.split(" ")).to_a
  end

  def word_count(unique)
    unique.count
  end

  def word_frequencies
    words = {}
    normalize_words.split(" ").each do |word| 
      words[word] ? words[word] += 1 : words[word] = 1
    end
    words
  end

  def longest_word
    # longest = ""
    # unique_words.each do |word|
    #   longest = word if word.length > longest.length
    # end
    # longest
    #
    # Shorter:
    # using Enumerable#max and <=> operator:
    # unique_words.max { |a, b| a.length <=> b.length }
    #
    # Even shoter: 
    unique_words.max_by { |a| a.length }
  end
end
