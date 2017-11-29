require_relative('../models/brands.rb')
require_relative('../models/models.rb')
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

brand5 = Brand.new({"brand_name" => "Vans"})
brand5.save

model1 = Model.new({
  "model_name" => "Air Max 97",
  "brand_id" => brand1.id,
  "quantity" => 10,
  "style" => "Street Wear",
  "buy_price" => 60,
  "sell_price" => 120
  })
model1.save

model2 = Model.new({
  "model_name" => "Stan Smith",
  "brand_id" => brand2.id,
  "quantity" => 8,
  "style" => "Casual",
  "buy_price" => 35,
  "sell_price" => 70
  })
model2.save

model3 = Model.new({
  "model_name" => "Onitsuka Tiger",
  "brand_id" => brand3.id,
  "quantity" => 5,
  "style" => "Runner",
  "buy_price" => 40,
  "sell_price" => 60

  })
model3.save

model4 = Model.new({
  "model_name" => "Workout Plus",
  "brand_id" => brand4.id,
  "quantity" => 2,
  "style" => "Casual",
  "buy_price" => 35,
  "sell_price" => 70
  })
model4.save

model5 = Model.new({
  "model_name" => "Old Skool",
  "brand_id" => brand5.id,
  "quantity" => 2,
  "style" => "Low-top",
  "buy_price" => 35,
  "sell_price" => 70
  })
model5.save

# Model.all()

binding.pry
nil
