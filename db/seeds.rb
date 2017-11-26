require_relative('../models/brand.rb')
require_relative('../models/model.rb')
require('pp')
require('pry')

brand1 = Brand.new({"brand_name" => "Nike"})
brand1.save
brand2 = Brand.new({"brand_name" => "Adidas"})
brand2.save
brand3 = Brand.new({"brand_name" => "ASICS"})
brand3.save
brand4 = Brand.new({"brand_name" => "Reebok"})
brand4.save

binding.pry
nil
