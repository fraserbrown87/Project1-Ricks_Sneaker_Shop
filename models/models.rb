require_relative("../db/sql_runner.rb")
require_relative("./brands.rb")

class Model

  attr_reader :id, :model_name, :brand_id, :quantity, :style, :buy_price, :sell_price

  def initialize(options)
    @id = options['id'].to_i
    @model_name = options['model_name']
    @brand_id = options['brand_id'].to_i
    @quantity = options['quantity'].to_i
    @style = options['style']
    @buy_price = options['buy_price'].to_f
    @sell_price = options['sell_price'].to_f
  end

  def save()
    sql = "INSERT INTO models
    (
      model_name,
      brand_id,
      quantity,
      style,
      buy_price,
      sell_price
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6
    )
    RETURNING *"
    values = [@model_name, @brand_id, @quantity, @style, @buy_price, @sell_price]
    result = SqlRunner.run(sql, values)
    @id = result.first()['id'].to_i
  end

  def update()
    sql = "UPDATE models
    SET
    (
      model_name,
      brand_id,
      quantity,
      style,
      buy_price,
      sell_price
      ) =
      (
        $1, $2, $3, $4, $5, $6
      )
      WHERE id = $7"
      values = [@model_name, @brand_id, @quantity, @style, @buy_price, @sell_price, @id]
      SqlRunner.run( sql, values )
    end

    def self.all()
      sql = "SELECT * FROM models"
      values = []
      models = SqlRunner.run(sql,values)
      result = models.map {|model| Model.new(model)}
    end

    def self.find(id)
      sql = "SELECT * FROM models WHERE id = $1"
      values = [id]
      brand = SqlRunner.run(sql, values)
      result = Model.new(model.first)
      return result
    end

    def brand()
      sql = "SELECT * FROM brands
      WHERE id = $1"
      values = [@brand_id]
      results = SqlRunner.run( sql, values )
      return Brand.new( results.first )
    end

    def stock_level
      if @quantity >= 8
        return "High"
      elsif @quantity >= 4
        return "Medium"
      elsif @quantity >= 1
        return "Low"
      else
        return "Out of Stock"
      end
    end

    def stock_level_css
      if @quantity >= 8
        return "stock_level_high"
      elsif @quantity >= 4
        return "stock_level_medium"
      elsif @quantity >= 1
        return "stock_level_low"
      else
        return "stock_level_out_of_stock"
      end
    end

    def calc_markup()
      result = (@sell_price - @buy_price) / @buy_price
      percentage = result * 100
      return percentage.to_f.round(2)
    end

  end
