# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module ModeloQytetet
  require_relative 'casilla'
  require_relative 'tipo_casilla'
  require_relative 'titulo_propiedad'
  
  class Tablero
    
   attr_accessor :casillas, :carcel 
    
    def initialize
      
      @casillas = Array.new
      @carcel 
      
      inicializar()
      
    end
    
    def inicializar()
      #Ejemplo
      #@tituloP1 = TituloPropriedad.new(nombre, precioCompra, alquilerBase, factorRevalorizacion, hipotecaBase, precioEdificar)
      
      @tituloP1 = TituloPropiedad.new("Edificio lujoso", 1000, 100, 0.2, 600, 400)
      @tituloP2 = TituloPropiedad.new("Edificio de viviendas familiares", 500, 60, 0.15, 200, 300)
      @tituloP3 = TituloPropiedad.new("Parking 1", 600, 100, 0.15, 400, 250)
      @tituloP4 = TituloPropiedad.new("Chalet", 1000, 100, 0.2, 600, 400)
      @tituloP5 = TituloPropiedad.new("Granje", 600, 100, 0.15, 400, 250)
      @tituloP6 = TituloPropiedad.new("Apartamentos Acomodados", 700, 90, 0.1, 400, 300)
      @tituloP7 = TituloPropiedad.new("Campo de golf", 1000, 100, 0.2, 600, 400)
      @tituloP8 = TituloPropiedad.new("Parque placentero", 800, 100, 0.2, 300, 250)
      @tituloP9 = TituloPropiedad.new("Pisos picados", 800, 80, 0.2, 600, 400)
      @tituloP10 = TituloPropiedad.new("Centro comercial",1000, 100, 0.2, 600, 400)
      
      #Parking
      @C15 = Casilla.crear_casilla_calle(15, TipoCasilla::PARKING, @tituloP3)
      #Sorpresas 4, 7, 12
      @C4 = Casilla.crear_casilla(4, TipoCasilla::SORPRESA)
      @C7 = Casilla.crear_casilla(7, TipoCasilla::SORPRESA)
      @C12 = Casilla.crear_casilla(12, TipoCasilla::SORPRESA)
      #Juez 
      @C6 = Casilla.crear_casilla(6, TipoCasilla::JUEZ)
      #Impuesto
      @C16 = Casilla.crear_casilla(16, TipoCasilla::IMPUESTO)
      #Calle
      @C1 = Casilla.crear_casilla_calle(1, @tituloP2, @tituloP2.precioCompra)
      @C2 = Casilla.crear_casilla_calle(2, @tituloP4, @tituloP4.precioCompra)
      @C3 = Casilla.crear_casilla_calle(3, @tituloP5, @tituloP5.precioCompra)
      @C5 = Casilla.crear_casilla_calle(5, @tituloP6, @tituloP6.precioCompra)
      @C8 = Casilla.crear_casilla_calle(8, @tituloP7, @tituloP7.precioCompra)
      @C10 = Casilla.crear_casilla_calle(10, @tituloP8, @tituloP8.precioCompra)
      @C11 = Casilla.crear_casilla_calle(11, @tituloP9, @tituloP9.precioCompra)
      @C13 = Casilla.crear_casilla_calle(13, @tituloP1, @tituloP1.precioCompra)
      @C14 = Casilla.crear_casilla_calle(14, @tituloP4, @tituloP4.precioCompra)
      @C17 = Casilla.crear_casilla_calle(17, @tituloP9, @tituloP9.precioCompra)
      @C18 = Casilla.crear_casilla_calle(18, @tituloP2, @tituloP2.precioCompra)
      @C19 = Casilla.crear_casilla_calle(19, @tituloP1, @tituloP1.precioCompra)
      
      #Salida
      @C0 = Casilla.crear_casilla(0, TipoCasilla::SALIDA)
      
      #Carcel
      @C9 = Casilla.crear_casilla(9,TipoCasilla::CARCEL)
      @carcel = @C9
      
      #Añadir casilla al array Casillas
      casillas<<@C0
      casillas<<@C1
      casillas<<@C2
      casillas<<@C3
      casillas<<@C4
      casillas<<@C5
      casillas<<@C6
      casillas<<@C7
      casillas<<@C8
      casillas<<@C9
      casillas<<@C10
      casillas<<@C11
      casillas<<@C12
      casillas<<@C13
      casillas<<@C14
      casillas<<@C15
      casillas<<@C16
      casillas<<@C17
      casillas<<@C18
      casillas<<@C19  
      
      
    end
    
    
    
    def esCasillaCarcel(numeroCasilla)
      raise NotImplementedError
    end
    
    def obtenerCasillaFinal(casilla,desplazamiento)
      raise NotImplementedError
    end
    
    def obtenerCasillaNumero(numeroCasilla)
      raise NotImplementedError
    end
    
    def to_s
     puts "\n Tablero.\n"
     #puts "\n Tablero \n Carcel : #{@carcel} \n Casillas : #{@casillas}"
    end
    
  end
end
