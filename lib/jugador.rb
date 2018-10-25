# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module ModeloQytetet
  class Jugador
    
    attr_accessor :cartaLibertad, :casillaActual, :Encarcelado
    attr_reader :nombre, :propiedades, :saldo
    
    def initialize(nombre)
      @encarcelado = false
      @nombre = nombre
      @saldo = 7500
    end
    
    def cancelarHipoteca
      raise NotImplementedError
    end
    
    def comprarTituloPropiedad
      raise NotImplementedError
    end
    
    def cuantasCasasHotelesTengo
      raise NotImplementedError
    end
    
    def deboPagarAlquiler
      raise NotImplementedError
    end
    
    def devolverCartaLibertad
      raise NotImplementedError
    end
    
    def edificarCasa(titulo)
      raise NotImplementedError
    end
    
    def edificarHotel(titulo)
      raise NotImplementedError
    end
    
    private
    def eliminarDeMisPropiedades(titulo)
      raise NotImplementedError
    end
    
    def esDeMiPropiedad(titulo)
      raise NotImplementedError
    end
    
    def estoEnCalleLibre
      raise NotImplementedError
    end
    
    def hipotecarPropiedad (titulo)
      raise NotImplementedError
    end
    
    def irACarcel(casilla)
      raise NotImplementedError
    end
    
    def modificarSaldo(cantidad)
      raise NotImplementedError
    end
    
    def obtenerCapital
      raise NotImplementedError
    end
    
    def obtenerPropiedades(hipotecada)
      raise NotImplementedError
    end
    
    def pagarAlquiler
      raise NotImplementedError
    end
    
    def pagarImpuestos
      raise NotImplementedError
    end
    
    def pagarLibertad
      raise NotImplementedError
    end
    
    def tengoCartaLibertad
      raise NotImplementedError
    end
    
    private
    def tengSaldo(cantidad)
      raise NotImplementedError
    end
    
    def venderPropiedad(casilla)
      raise NotImplementedError
    end
    
    def to_s
     puts "Jugador:  #{@nombre}.\n"
      #puts "\n Jugador \n Nombre : #{@nombre} \n ¿Está en la cárcel? : #{@encarcelado} \n Saldo : #{@saldo}."
    end
    
  end
end
