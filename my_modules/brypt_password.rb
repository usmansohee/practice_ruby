require 'rubygems'
require 'bundler/setup'
Bundler.require

module BcryptPassword
  puts "BcryptPassword Module Activated"
  def self.create_bcrypt_password(password)
    BCrypt::Password.create(password)
  end

  def self.check_bcrypt_password(password)
    BCrypt::Password.new(password)
  end

  def self.create_secured_password(list_users)
    list_users.each do | user |
      user[:password] = create_bcrypt_password(user[:password])
    end
  end

  def self.authenticate_user(username, pwd, users)

    users.each do | user |
      if user[:username] == username && check_bcrypt_password(user[:password]) == pwd
        return user
      end
    end
    "credentials not correct"
  end

end
