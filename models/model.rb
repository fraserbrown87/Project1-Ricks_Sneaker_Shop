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

  def save()
    sql = "INSERT INTO models
    (
      model_name,
      brand_id,
      quantity
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING *"
    values = [@model_name, @brand_id, @quantity]
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
      ) =
      (
        $1, $2, $3
      )
      WHERE id = $4"
      values = [@model_name, @brand_id, @quantity, @id]
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

  end
