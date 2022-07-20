
dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(book)
  book.keys
end

# Get area code based on given hash and key
def get_area_code(book, city)
  book[city]
end

# Execution flow
loop do
  print "\nget area-code based on city-name (y/n): "
  answer = gets.chomp.downcase
  break if answer != "y"

  puts get_city_names(dial_book)
  print "\nenter city name: "
  city = gets.chomp.downcase

  if dial_book.include?(city)
    area_code = get_area_code(dial_book,city)
    puts "\narea-code: #{area_code}"
  else
    puts "-> invalid city name"
  end
end
