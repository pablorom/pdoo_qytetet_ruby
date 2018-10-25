# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module ModeloQytetet
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
      
      @tituloP1 = TituloPropriedad.new("Edificio lujoso", 1000, 100, 0.2, 600, 400)
      @tituloP2 = TituloPropriedad.new("Edificio de viviendas familiares", 500, 60, 0.15, 200, 300)
      #@tituloP3 = TituloPropriedad.new("Parking 1", 600, 100, 0.15, 400, 250)
      @tituloP4 = TituloPropriedad.new("Chalet", 1000, 100, 0.2, 600, 400)
      @tituloP5 = TituloPropriedad.new("Granje", 600, 100, 0.15, 400, 250)
      @tituloP6 = TituloPropriedad.new("Apartamentos Acomodados", 700, 90, 0.1, 400, 300)
      @tituloP7 = TituloPropriedad.new("Campo de golf", 1000, 100, 0.2, 600, 400)
      @tituloP8 = TituloPropriedad.new("Parque placentero", 800, 100, 0.2, 300, 250)
      @tituloP9 = TituloPropriedad.new("Pisos picados", 800, 80, 0.2, 600, 400)
      @tituloP10 = TituloPropriedad.new("Centro comercial",1000, 100, 0.2, 600, 400)
      
      #Parking
      @C15 = Casilla.new(15, TipoCasilla::PARKING)
      @Cw=
      #Sorpresas 4, 7, 12
      @C4 = Casilla.new(4, TipoCasilla::SORPRESA)
      @C7 = Casilla.new(7, TipoCasilla::SORPRESA)
      @C12 = Casilla.new(12, TipoCasilla::SORPRESA)
      
      #Juez 
      @C6 = Casilla.new(6, TipoCasilla::JUEZ)
      
      #Impuesto
      @C16 = Casilla.new(16, TipoCasilla::IMPUESTO)
      
      #Calle
      @C1 = Casilla.new(1, TipoCasilla::CALLE, @tituloP2)
      @C2 = Casilla.new(2, TipoCasilla::CALLE, @tituloP4)
      @C3 = Casilla.new(3, TipoCasilla::CALLE, @tituloP5)
      @C5 = Casilla.new(5, TipoCasilla::CALLE, @tituloP6)
      @C8 = Casilla.new(8, TipoCasilla::CALLE, @tituloP7)
      @C10 = Casilla.new(10, TipoCasilla::CALLE, @tituloP8)
      @C11 = Casilla.new(11, TipoCasilla::CALLE, @tituloP9)
      @C13 = Casilla.new(13, TipoCasilla::CALLE, @tituloP10)
      @C14 = Casilla.new(14, TipoCasilla::CALLE, @tituloP4)
      @C17 = Casilla.new(17, TipoCasilla::CALLE, @tituloP9)
      @C18 = Casilla.new(18, TipoCasilla::CALLE, @tituloP2)
      @C19 = Casilla.new(19, TipoCasilla::CALLE, @tituloP1)
      
      #Salida
      @C0 = Casilla.new(0, TipoCasilla::SALIDA)
      
      #Carcel
      @C9 = Casilla.new(9,TipoCasilla::CARCEL)
      @carcel = C9
      
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
