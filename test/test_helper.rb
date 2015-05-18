require 'simplecov'            

SimpleCov.start do
  add_group "app", "app"
  add_filter '/test/'          
end 

require "minitest/autorun"     
require 'awesome_print'        
require 'byebug'

Dir.glob("./app/*.rb").each {| f | require f }
