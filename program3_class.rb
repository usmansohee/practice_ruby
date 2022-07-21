require_relative 'my_modules/brypt_password'

users = [
    { :username => "usman", :password => "ahmed9"},
    { :username => "uname", :password => "pwd"},
    { :username => "windows" , :password => "macos"}
]
secured_pwds = BcryptPassword.create_secured_password(users)

res = BcryptPassword.authenticate_user("usman", "ahmed9", secured_pwds)

puts res