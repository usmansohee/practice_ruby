#uses of array of hashes , loop , if-else , methods , equality

users = [
    { username: "usman", password: "ahmed9"},
    { :username => "uname", :password => "pwd"},
    { :username => "windows" , :password => "macos"}
]

def authenticate(users_list,username, password)
  users_list.each do |user|
    if user[:username] == username && user[:password] == password
      return user
    end
  end
  false
end

puts "Welcome to the Password Authenticator"
25.times { print("-") }

puts "\nenter username and password\n"


attempts = 1
while attempts <=3

  print "\nUsername: "
  name = gets.chomp
  print "Password: "
  pwd = gets.chomp

  authenticate_result = authenticate(users,name,pwd)
  if authenticate_result.eql?(false )
    puts "credentials are not correct"
    attempts+=1
  else
    puts authenticate_result
  end
  puts "\npress 'n' to exit or anykey to continue."
  exit = gets.chomp.downcase
  break if exit.eql?('n')
end

