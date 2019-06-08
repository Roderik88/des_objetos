propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
  def initialize(perro)
    @nombre = perro[:nombre]
    @raza = perro[:raza]
    @color = perro[:color]
  end

  def ladrar
    puts "#{@nombre} esta ladrando"
  end
end

perro = Dog.new(propiedades)
perro.ladrar
