class MiClase
  def de_instancia
    puts 'Metodo de instancia!'
  end

  def self.de_clase
    puts 'Metodo de clase!'
  end
end

MiClase.de_clase
MiClase.new.de_instancia
