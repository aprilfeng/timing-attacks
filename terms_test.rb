
NUMBER_OF_TRIALS = 100
SEARCH_TERMS = ['scott', 'blake']

results = Hash.new { |h, k| h[k] = [] }

NUMBER_OF_TRIALS.times do |i|
  SEARCH_TERMS.each do |term|
    results[term] << benchmark_get(term) 
  end 
end
