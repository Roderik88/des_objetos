# ejercicio 6
class Product
  attr_accessor :name, :sizes, :xs
  def initialize(name, *sizes, xs)
    @name = name
    @sizes = sizes.map(&:to_i)
  end
  def average
    @sizes.inject(&:+) / @sizes.size.to_f
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

#ejercicio 7
class Centro
  def list(b)
    File.open('nuevo_catalogo','a') { |v| v.puts("#{b.name},#{b.sizes}")}
  end
end
centro = Centro.new
products_list.each {|c| centro.list(c)}
