
sample_hash = {'name' => 1, 'last' => 2}

sample_hash_1 = { name: 'usman', last: 'ahmed' }
sample_hash_2 = {:name => "usman", :last => "ahmed"}

puts sample_hash
puts sample_hash_1
puts sample_hash_2


sample_hash.each do |key, value|
  puts "the class for key is #{key.class} and value for key is #{value.class}"
end
puts "\n"
sample_hash_2.each do |key, value|
  puts "the class for key is #{key.class} and value for key is #{value.class}"
end

puts sample_hash['name']
puts sample_hash_2[:name]
puts "\n"

sample_hash_3 = {:first => "usman", :middle => "ahmed", :last => 1 }

sample_hash_3.each { |key , item| puts "#{key.class} #{item.class}" }

res = sample_hash_3.select { |k,v| v.is_a?(Numeric)}
puts res

puts sample_hash_3.each { |k,v| sample_hash_3.delete(k) if v.is_a?(Integer) }
