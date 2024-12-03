puts "Welcome to the Authenticator"
25.times { print "-" }
puts "This program will take input from the user and compare password"

users = [
  {username: "Peter", password: "321"}
]


tries = 1
while tries < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  users.each do |user| 
    if user[:username] == username && user[:password] == password 
      puts users 
      break 
    else 
      puts "Invalid username/password combination" 
      tries += 1
    end
  end

end


