puts "Welcome to the Authenticator"
25.times { print "-" }
puts "\nThis program will take input from the user and compare password"

users = [
  {username: "peter", password: "321"}
]

tries = 1
access = true
menu = true

# User authentication logic 
def auth_user(username, password, users)
  users.each do |user_element| 
    if user_element[:username] == username && user_element[:password] == password 
      return user_element
    end
  end
  puts "Incorrect credentials"
end


while menu
  access = true
  # Menu Screen
  puts "Please select the following by entering the number:"
  puts "1) Login"
  puts "2) Sign Up"
  puts "3) Quit"

  user_response = gets.chomp

  # Login selected
  if user_response == "1"
    while tries < 4
      print "Username: "
      username = gets.chomp.downcase
      print "Password: "
      password = gets.chomp.downcase

      authentication_result = auth_user(username, password, users)
      puts authentication_result
      tries += 1
    end

  
  # Sign up selected
  elsif user_response == "2"
    print "Enter username: "
    new_username = gets.chomp.downcase
    print "Enter password: "
    new_password = gets.chomp.downcase
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










