# frozen_string_literal: true

developers = %w[Gabe Ying David Natasha Carly]
consultants = %w[Carly Jason Antony Lauren]
p developers
p consultants

# any elements the 2nd array has are removed from 1st array
subtract1 = developers - consultants
subtract2 = consultants - developers

p subtract1
p subtract2

# one of each
union = developers | consultants
p union

# anything in common
intersection = developers & consultants
p intersection

# flatten
flat = [[1, 2], 1, 2, 3].flatten
p flat
