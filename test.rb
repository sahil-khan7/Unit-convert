# --------------------------------------------main file -----------------------------------------
require 'money'
require 'colorize'  
require_relative 'Mod'
require 'httparty'
class Exchange
    include Ex_rate    
    def num_to_string(exchange_rate)
        
    end
end

## driver logic

# Getting amount
print "Enter your amount: ".colorize(:blue)
begin
    amt = Float(gets)
rescue ArgumentError
    print "Enter amount in number: ".colorize(:red)
    retry
end
arr = ['INR', 'USD', 'EUR','JPY','GBP']

# Getting base currency
puts "Enter currency of the Ammount from the list".colorize(:light_green)
puts " 1.INR (Indian Rupees) \n 2.USD (US Dollar) \n 3.EUR (Euro) \n 4.JPY (Japnees Yen) \n 5.GBP (Pound)".colorize(:light_green)
begin
    print "Enter currency of given amount: ".colorize(:blue)
    base_rate = gets.chomp.upcase.strip
    raise "error" unless arr.include?(base_rate)
    rescue
        puts "You can only give currency from given list".colorize(:red)
        

        retry
end
# Getting ecxange currency
print "Select currency in which you wish to convert from the list:".colorize(:blue)
# puts " 1.INR (Indian Rupees) \n 2.USD (US Dollar) \n 3.EUR (Euro) \n 4.JPY (Japnees Yen) \n 5.GBP (Pound)".colorize(:yellow)

begin
    exchange_rate = gets.chomp.upcase.strip
    raise "error" unless arr.include?(exchange_rate)
    rescue
        print "Enter a valid currency from the list: ".colorize(:red)
        retry
end

convert=Exchange.new
convert.converter(amt,base_rate,exchange_rate)