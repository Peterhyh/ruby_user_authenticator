puts "Welcome to the Authenticator"
25.times { print "-" }
puts "This program will take input from the user and compare password"

users = []

users_template = {username: "", password: ""}


print "Username: "
user = gets.chomp
print "Password: "
pass = gets.chomp


