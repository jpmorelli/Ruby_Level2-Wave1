
$impuesto  = 1.21 #IVA

class Veterinaria
                                                                                                                                                             
        attr_accessor :nombre, :animales, :precio_banio, :precio_peluqueria                                                                                         
        
        #def nombre
        # @nombre
        #end

        #def nombre=(value)
        # @nombre = value
        #end
        
                                                                                                                                                             
        def initialize(nombre, precio_banio, precio_peluqueria)                                                                                                                                                         
                @precio_banio = precio_banio                                                                                 
                @precio_peluqueria = precio_peluqueria                                                                       
                @nombre = nombre                                                                                             
        end                                                                                                 
                                                                                                                                                             
        def calcular_costo                                 
                costo = 0                                                                                                    
                                                                                                                                                             
                animales.each do |a|                                                                        
                                                                                                                                                             
                        subtotal = 0                                                                                         
                                                                                                                                                             
                        if a.banio                                                                          
                                subtotal += @precio_banio + a.costo_por_actividad                                            
                        end                                                                                 
                                                                                                                                                             
                        if a.peluqueria                                                                     
                                subtotal += @precio_peluqueria + a.costo_por_actividad                                       
                        end                                                                                 
                                                                                                                                                             
                        subtotal *= $impuesto                                                                                
                        puts "A #{a.nombre} se le cobrÃ³ : #{subtotal}"                          
                                                                                                                                                             
                        costo += subtotal                                                                                                                    
                end                                                                                         
                                                                                                                                                             
                puts "Veterinaria #{nombre}:"
                puts "El costo total es : #{costo}"
        end
end


class Animal

        attr_accessor :nombre, :banio, :peluqueria, :adicional_pelaje_largo

        def initialize(nombre,banio,peluqueria)
                @nombre = nombre
                @banio = banio
                @peluqueria = peluqueria
                @adicional_pelaje_largo = 0
        end

        def costo_por_actividad
                costo_base_por_actividad + adicional_pelaje_largo
        end
        
end

class Perro < Animal
        @@costo_base_por_actividad = 50
        @@lugares_disponibles      = 5 # Lugares especiales para perros
        
        def initialize(nombre,banio,peluqueria)
                super
                if @@lugares_disponibles > 0
                        @@lugares_disponibles = @@lugares_disponibles - 1
                        puts "Ahora tenemos #{@@lugares_disponibles} lugares libres para #{self.class.superclass.name}"                        
                else
                        raise "No hay mas caniles de #{self.class.superclass.name} disponibles"
                end
        end

        def costo_base_por_actividad
                @@costo_base_por_actividad
        end

        def self.lugares_disponibles
                @@lugares_disponibles                
        end        
        
end


class Gato < Animal
        @@costo_base_por_actividad = 30
        @@lugares_disponibles      = 5 # Lugares especiales para gatos

        def initialize(nombre,banio,peluqueria)
                super
                if @@lugares_disponibles > 0
                        @@lugares_disponibles = @@lugares_disponibles - 1
                        puts "Ahora tenemos #{@@lugares_disponibles} lugares libres para #{self.class.superclass.name}"
                else
                        raise "No hay mas caniles de #{self.class.superclass.name} disponibles"
                end
                
        end

        def costo_base_por_actividad
                @@costo_base_por_actividad
        end

        def self.lugares_disponibles
                @@lugares_disponibles                
        end
        
end


class Labrador < Perro
        
        def initialize(nombre,banio,peluqueria)
                super
                @adicional_pelaje_largo = 20
        end

end


class Dalmata < Perro

        def initialize(nombre,banio,peluqueria)
                super(nombre,banio,peluqueria)
        end
end


class Persa < Gato

        def initialize(nombre,banio,peluqueria)
                super
                @adicional_pelaje_largo = 10
        end

end

class Siames < Gato
        

        def initialize(nombre,banio,peluqueria)
                super
        end

end

