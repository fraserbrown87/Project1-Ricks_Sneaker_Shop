require_relative("../db/sql_runner.rb")
require_relative("./brand.rb")

class Model

  attr_reader :id, :model_name, :brand_id, :quantity

  def initialize(options)
    @id = options['id'].to_i
    @model_name = options['model_name']
    @brand_id = options['brand_id'].to_i
    @quantity = options['quantity'].to_i
  end
end
