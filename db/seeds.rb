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

model1 = Model.new({
  "model_name" => "Air Max 97",
  "brand_id" => brand1.id,
  "quantity" => 10
  })
model1.save

model2 = Model.new({
  "model_name" => "Stan Smith",
  "brand_id" => brand2.id,
  "quantity" => 8
  })
model2.save

model3 = Model.new({
  "model_name" => "Onitsuka Tiger",
  "brand_id" => brand3.id,
  "quantity" => 5
  })
model3.save

model4 = Model.new({
  "model_name" => "Classic",
  "brand_id" => brand4.id,
  "quantity" => 2
  })
model4.save

# Model.all()

binding.pry
nil
