class Animal; end

class Perro < Animal
 
  # método inicializar clase
  def initialize(raza, nombre) 
    # atributos   
    @raza = raza  
    @nombre = nombre  
  end  
 
  # método ladrar
  def self.ladrar
    puts 'Guau! Guau!'  
  end

  def self.factory_de_caniches(nombre)
    self.new('caniche', nombre)
  end 

  def self.factory_de_caniches_que_se_llaman_tchere
    self.new('caniche', 'Tchere')
  end
 
  # método saludar
  def saludar
    puts "Soy un perro de la raza #{@raza} y mi nombre es #{@nombre}"  
  end  
end

perro = Perro.new('caniche', 'Tchere')
perro.saludar
perro.ladrar

perro = Perro.factory_de_caniches('Tchere')

Perro.saludar