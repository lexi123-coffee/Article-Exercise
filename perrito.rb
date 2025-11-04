class Perrito
  MAX_ENERGY = 100
  MIN_ENERGY = 0

  def initialize(nombre)
    @nombre = nombre
    @energy = MAX_ENERGY
    @is_alive = true
  end

  def run
    return if verificar_estado_inactivo
    ajustar_energia(-30)
    puts "#{@nombre} ya ha corrido mucho y por eso ahora ya tiene #{@energy} de energia."
  end

  def eat
    return if verificar_estado_inactivo
    ajustar_energia(+20)
    puts "#{@nombre} ya comio y por eso ahora ya tiene #{@energy} de energia."
  end

  def sleep
    return if verificar_estado_inactivo
    ajustar_energia(+40)
    puts "#{@nombre} durmio un ratito y por eso ahora tiene #{@energy} de energia."
  end

  def trick
    return if verificar_estado_inactivo
    ajustar_energia(-20)
    puts "#{@nombre} hizo un truco, por eso ahora tiene #{@energy} de energia."
  end

  def ajustar_energia(cambio)
    return puts "#{@nombre} ya no puede hacer trucos porque ya ha fallecido." unless @is_alive

    @energy += cambio
    @energy = [[@energy, MAX_ENERGY].min, MIN_ENERGY].max

    if @energy == MIN_ENERGY
      @is_alive = false
      puts "#{@nombre} se ha quedado sin energia y ha fallecido."
    end
  end

  def verificar_estado_inactivo
    unless @is_alive
      puts "#{@nombre} ya no puede hacer nada porque ha fallecido."
      return true
    end
    false
  end
end

