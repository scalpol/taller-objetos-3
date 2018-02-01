class Rectangulo
  attr_reader :largo, :ancho
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
    puts "El rectángulo mide #{@ancho} de ancho y #{@largo} de largo."
  end
end

class Cuadrado
  attr_reader :lado
  def initialize(lado)
    @lado = lado
  end
  def lados
    puts "El cuadrado mide #{lado} de lado."
  end
end

def perimetro(lado1, lado2 = lado1)
  lado1 * 2 + lado2 * 2
end

def area(lado1, lado2 = lado1)
  lado1 * lado2
end

rectangulo1 = Rectangulo.new(2,5)
cuadrado1 = Cuadrado.new(4)

puts 'Perimetro del rectangulo = ' + perimetro(rectangulo1.ancho, rectangulo1.largo).to_s
puts 'Perimetro del cuadrado = ' + perimetro(cuadrado1.lado).to_s

puts 'Area del rectangulo = ' + area(rectangulo1.ancho, rectangulo1.largo).to_s
puts 'Area del cuadrado = ' + area(cuadrado1.lado).to_s
