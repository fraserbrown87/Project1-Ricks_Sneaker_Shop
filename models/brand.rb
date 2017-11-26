require_relative("../db/sql_runner.rb")
require_relative("./model.rb")

class Brand

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @brand_name = options['brand_name']
  end

  def save()
    sql = "INSERT INTO brands (brand_name) VALUES ($1) Returning *"
    values = [@brand_name]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i
  end

  def update()
    sql = "UPDATE brands SET (brand_name) = ($1) WHERE id = $2"
    values = [@brand_name, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM brands"
    values = []
    brands = SqlRunner.run(sql,values)
    result = brands.map {|pizza| Pizza.new(brand)}
  end

  def self.find(id)
    sql = "SELECT * FROM brands WHERE id = $1"
    values = [id]
    brand = SqlRunner.run(sql, values)
    result = Brand.new(brand.first)
    return result
  end
end
