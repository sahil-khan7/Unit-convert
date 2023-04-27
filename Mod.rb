require 'money'
module Ex_rate 
    I18n.config.available_locales = :en    
    RATE = {
        'INR': {
            'INR': 1,
            'USD': 0.0122,
            'EUR': 0.011,
            'JPY': 1.6294,
            'GBP': 0.0098
        },
        'USD': {
            'INR': 81.97,
            'USD': 1,
            'EUR': 0.805,
            'JPY': 133.56,
            'GBP': 0.805
        },
        'EUR':{
            'INR': 89.9676,
            'USD': 1.098,
            'EUR': 1,
            'JPY': 146.65,
            'GBP': 0.8893,
        },
        'JPY':{
            'INR': 0.6138,
            'USD': 0.0075,
            'EUR': 0.0068,
            'JPY': 1,
            'GBP': 0.006
        },
        'GBP':{
            'INR': 101.828,
            'USD': 1.2423,
            'EUR': 1.1314,
            'JPY': 165.91,
            'GBP': 1
        }
    } 
  
    # def converter(amt,base_rate,exchange_rate)
        RATE.each do |base_cur, exchange_cur|
            exchange_cur.each do |ex_cur, con_rate|
                Money.add_rate(base_cur,ex_cur,con_rate)
            end
            
            def converter(amt,base_rate,exchange_rate)
            x =  Money.from_amount(amt, base_rate)
            rate = x.exchange_to(exchange_rate)
            puts "Currency in #{exchange_rate}: #{rate.format}".colorize(:green)
            end
        end
    # puts "Currency in US Dollar: #{rate.format}".colorize(:green)
#   end
end