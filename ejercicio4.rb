class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(filename = 'notas.txt')
    # Pensé en dejarlo como venía originalmente (lo que era mucho más simple y corto), pero el código por defecto guardaba las notas como strings.
    alumnos = []
    data = []
    File.open(filename, 'r') { |file| data = file.readlines }
    data.each do |alumno|
      datos = alumno.split(', ')
      datos2 = []
      datos.each_with_index do |dato, i|
        if i.zero? # Me imagino que puede haber una forma mejor para hacer algo con el primer iterado, pero ni idea como.
          datos2 << dato
        else
          datos2 << dato.chomp.to_i
        end
      end
      alumnos << Alumno.new(*datos2)
    end
    alumnos
  end
end

print Alumno.read_file
