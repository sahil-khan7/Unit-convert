# -------A-------------------------------------26 April 2023--------------------------------------
#  --------------------------------------------main file -----------------------------------------
require 'money'
require 'colorize'  
require_relative 'Mod'
class Exchange
    include Ex_rate
end



## driver logic
print "Enter your amount: ".colorize(:blue)
amt = gets.to_i
print "Enter the currency of given amount: ".colorize(:blue)
base_rate = gets.chomp.upcase
# puts base_rate

puts "Enter currency in which you wish to convert from the list".colorize(:blue)
puts " 1 ==> USD (US Dollar) \n 2 ==> EUR (Euro) \n 3 ==> JPY (Japnees Yen) \n 4 ==> IQD (Dinar) \n 5 ==> GBP (Pound)".colorize(:yellow)
exchange_rate = gets.chomp.upcase()

# puts exchange_rate
convert=Exchange.new
convert.converter(amt,base_rate,exchange_rate)



