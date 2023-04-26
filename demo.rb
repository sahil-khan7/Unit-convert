# ---------------------------- 25 April 2023--------------------------------



# msg = "hello world"
# msg_arr = msg.split(" ")
# puts msg_arr

require 'money'
require './Mod'

# dollar to INR
class Exchange
  include 'Ex_rate'
  def initialize(amt,base_rate, exchange_rate)
    I18n.config.available_locales = :en
    @amt = amt
    @base_rate = base_rate
    @exchange_rate = exchange_rate
  end

  def convert()
    case @exchange_rate
      when 1  # dollar
        Money.add_rate("INR","USD",0.00122)
        # Money.add_rate(base_rate, convert_rate)
        dollar = Money.from_amount(@amt, "INR").exchange_to("USD")
        puts "Currency in US Dollar: #{dollar.format}"
    when 2  # Euro
        Money.add_rate("INR","EUR",exchange_rate["EUR"])
        euro = Money.from_amount(@amt, "INR").exchange_to("EUR")
        puts "Currency in Euro: #{euro.format}"
    when 3  #JANAPESE YEN
        Money.add_rate("INR","JPY",exchange_rate["JPY"])
        yen = Money.from_amount(@amt, "INR").exchange_to("JPY")
        puts "Currency in Japanees Yen: #{yen.format}"
    when 4  # Dinar
        Money.add_rate("INR","IQD",exchange_rate["IQD"])
        deenar = Money.from_amount(@amt, "INR").exchange_to("IQD")
        puts "Currency in Deenar: #{deenar.format}"
    when 5 # Pound
        Money.add_rate("INR","GBP",exchange_rate["GBP"])
        pound = Money.from_amount(@amt, "INR").exchange_to("GBP")
        puts "Currency in Pound: #{pound.format}"
    else 
      puts "Wrong input"
    end
  end
end

## driver logic
print "Enter your amount: "
amt = gets
amt = amt.to_i

puts "Enter the currency of given amount"
base_rate = gets
puts "Enter currency in which you wish to convert"
puts "1 ==> USD (US Dollar) \n 2 ==> EUR (Euro) \n 3 ==> JPY (Japnees Yen) \n 4 ==> IQD (Dinar) \n 5 ==> GBP (Pound)"
# puts "3 ==> JPY (Japnees Yen)"
# puts "5 ==> GBP (Pound)"
# puts "4 ==> IQD (Dinar)"
# puts "2 ==> EUR (Euro)"
exchange_rate = gets
exchange_rate = exchange_rate.to_i
ex = Exchange.new(amt, base_rate, exchange_rate)
puts ex.convert()


# open exchange rate

# xe.com
