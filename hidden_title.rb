NUMBER_OF_TRIALS = 100
NUM_OF_CHARS = 43
CHAR_LIST = ('a'..'z').to_a
SEARCH_TERMS = CHAR_LIST.map do |letter|
  letter + '?' * (NUM_OF_CHARS - 1)
end

results = Hash.new { |h, k| h[k] = [] }

NUMBER_OF_TRIALS.times do |i|
  SEARCH_TERMS.each do |term|
    results[term] << benchmark_get(term)
  end
end
