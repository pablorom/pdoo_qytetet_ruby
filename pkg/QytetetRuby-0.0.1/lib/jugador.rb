# encoding: utf-8

module ModeloQytetet
  class Jugador
    
    attr_accessor :cartaLibertad, :casillaActual, :encarcelado
    attr_reader :nombre, :propiedades, :saldo
    
    def initialize(nombre)
      @encarcelado = false
      @nombre = nombre
      @saldo = 7500
      @cartaLibertad = nil
      @casillaActual = nil
      @propiedades = []
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
    
    def devolver_carta_libertad
      s = @carta_libertad
      @carta_libertad = nil
      s
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
    def tengoSaldo(cantidad)
      raise NotImplementedError
    end
    
    def venderPropiedad(casilla)
      raise NotImplementedError
    end
    
    # Para una representacion extensa, usar .inspect
    def to_s
      '===JUGADOR===' \
        "\nNombre: #{@nombre}" \
        "\nSaldo: #{@saldo}" \
        "\nCarta Libertad?: #{!@cartaLibertad.nil?}" \
        "\nEncarcelado?: #{@encarcelado}" \
        "\nCasilla Actual: #{@casillaActual}" \
        "\nPropiedades:" \
        "\n#{@propiedades.map(&:nombre)}"
    end
    
  end
end
