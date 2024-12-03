puts "Welcome to the Authenticator"
25.times { print "-" }
puts "\nThis program will take input from the user and compare password"

users = [
  {username: "Peter", password: "321"}
]

tries = 1
access = true
menu = true





while menu
  access = true
  # Menu Screen
  puts "1) Login"
  puts "2) Sign Up"
  puts "3) Quit"

  user_response = gets.chomp

  # Login selected
  if user_response == "1"
    while tries < 4 && access
      print "Username: "
      username = gets.chomp
      print "Password: "
      password = gets.chomp

      users.each do |user| 
        if user[:username] == username && user[:password] == password 
          puts users 
          access = false
        else 
          puts "Invalid username/password combination" 
          tries += 1
        end
      end
    end
  
  # Sign up selected
  elsif user_response == "2"
    print "Enter username: "
    new_username = gets.chomp
    print "Enter password: "
    new_password = gets.chomp
    users.push({username: new_username, password: new_password})
    puts "New user created! #{users}"
    tries = 1
  
  # Quit
  elsif user_response == "3"
    break
  else
    puts "Invalid selection"
    menu = false
  end
end
puts "Not Authenticated, goodbye!"









