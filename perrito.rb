class Perrito
  attr_accessor :nombre, :edad, :raza

  def initialize(nombre, edad, raza)
    @nombre = nombre
    @edad = edad
    @raza = raza
  end

  def mostrar_info
    puts "¡guau! me llamo #{@nombre}, tengo #{@edad}, y soy un #{@raza}"
  end
end


