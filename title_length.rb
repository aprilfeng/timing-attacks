NUMBER_OF_TRIALS = 100
DIGIT_LENGTH_RANGE = (10..70)
SEARCH_TERMS = DIGIT_LENGTH_RANGE.map do |i|
  '?' * i
end

results = Hash.new { |h, k| h[k] = [] }

NUMBER_OF_TRIALS.times do |i|
  SEARCH_TERMS.each do |term|
    results[term] << request.benchmark_get(term)
  end
end
