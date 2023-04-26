# -------------------------------------26 April 2023----------------------------------
# ------------------------------------module file-------------------------------------
require 'money'
module Ex_rate 

    I18n.config.available_locales = :en
    RATE = {
        'INR': {
            'USD': 0.0122,
            'GBP': 0.0098,
            'JPY': 1.634,
            'EUR': 0.0111
        },
        'USD': {
            'INR': 0.0122,
            'GBP': 0.0098,
            'JPY': 1.634,
            'EUR': 0.0111
        },
        'GBP': {
            'INR': 0.0122,
            'USD': 0.0098,
            'JPY': 1.634,
            'EUR': 0.0111
        },
        'JPY': {
            'INR': 0.0122,
            'USD': 0.0098,
            'GBP': 0.0111,    
            'EUR': 1.634
        },
        'EUR': {
            'INR': 0.0122,
            'USD': 0.0098,
            'GBP': 0.0111,    
            'JPY': 1.634
        }
    }
    
    RATE.each do |base_cur, exchange_cur|
        exchange_cur.each do |ex_cur, con_rate|
            Money.add_rate(base_cur,ex_cur,con_rate)
        end
            
        def converter(amt,base_rate,exchange_rate)
            x =  Money.from_amount(amt, base_rate)
            rate = x.exchange_to(exchange_rate)
            puts "Currency in US Dollar: #{rate.format}"
        end
    end
end
# puts "usd to inr is: #{exchange_rate[:GBP][:USD]}"

