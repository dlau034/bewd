$:.unshift(File.dirname(__FILE__)) #look for laptop file - look in the same folder as this file (foo.rb)

require 'laptop' #Requires it

Laptop.new('Sony', '27').display #Use it