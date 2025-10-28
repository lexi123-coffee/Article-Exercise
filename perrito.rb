class Perrito
  attr_accessor :nombre, :edad, :raza, :energy, :is_alive

  def initialize(nombre, edad, raza)
    @nombre = nombre
    @edad = edad
    @raza = raza
    @energy = 100
    @is_alive = true
  end

  def energia_positiva?
    @energy > 0
  end

  def run
    return if verificar_estado_inactivo

    @energy -= 20
    @energy = 0 if @energy < 0
    mostrar_estado_energia
    puts "#{@nombre} fue a correr un rato y ahora tiene #{@energy} de energia."

  end

  def eat
    return if verificar_estado_inactivo

    @energy += 20
    @energy = 100 if @energy > 100
    mostrar_estado_energia
    puts "#{@nombre} ya comio y por eso ahora tiene #{@energy} de energia."
  end

  def sleep
    return if verificar_estado_inactivo

    @energy += 10
    @energy = 100 if @energy > 100
    mostrar_estado_energia
    puts "#{@nombre} ya fue a dormir y por eso ahora tiene #{@energy} de energia."
  end

  def trick
    return if verificar_estado_inactivo

    @energy -= 20
    @energy = 0 if @energy < 0
    mostrar_estado_energia
    puts "#{@nombre} estaba haciendo un truco y por eso ahora tiene #{@energy} de energia."
  end

  private

  def verificar_estado_vivo
    if @energy <= 0
      @is_alive = false
      puts "#{@nombre} esta ya muy cansado y por eso ya no puede seguir"
    end
  end

  def verificar_estado_inactivo
    unless @is_alive
      puts "#{@nombre} se ha quedado sin energia y ya no puede hacer mas actividades"
      return true
    end
    false
  end

  def mostrar_estado_energia
    if energia_positiva?
      puts "#{@nombre} tiene #{@energy} de energia."
    else
      puts "#{@nombre} esta ya muy cansado y mejor va a descansar."
    end
  end
end
