class Vehicle
  def initialize(modelo, year)
    @model = modelo
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@instancias = 0
  def initialize(modelo, year)
    super
    @@instancias += 1
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end

  def self.instancias
    puts @@instancias
  end
end

marcas = ['Toyota', 'Mitsubishi', 'Renault', 'Hyundai', 'Pegeaut']

autos = []
10.times { autos << Car.new(marcas[rand(5)], rand(1990..2017)) }
Car.instancias
