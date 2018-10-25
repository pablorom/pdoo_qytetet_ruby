# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module ModeloQytetet
  class TituloPropriedad
    
    attr_accessor :nombre, :hipotecado, :precioCompra, :alquilerBase, :factorRevalorizacion, :hipotecaBase, :precioEdificar, :numHoteles, :numCasas, :jugador
    
    def initialize(nombre,precioCompra, alquilerBase,factorRevalorizacion, hipotecaBase, precioEdificar)
      
      @nombre = nombre
      @precioCompra = precioCompra
      @factorRevalorizacion = factorRevalorizacion
      @alquilerBase = alquilerBase
      @hipotecaBase = hipotecaBase
      @precioEdificar = precioEdificar
      
      @hipotecada = false
      @numHoteles = 0
      @numCasas = 0
      
    end
    
    def calcularCosteCancelar
      raise NotImplementedError
    end
    
    def calcularCosteHipoteca
      raise NotImplementedError
    end
    
    def calcularImporteAlquiler
      raise NotImplementedError
    end
    
    def calcularImporteAlquiler
      raise NotImplementedError
    end
    
    def calcularPrecioVenta
      raise NotImplementedError
    end
    
    def cancelarHipoteca
      raise NotImplementedError
    end
    
    def cobrarAlquilar
      raise NotImplementedError
    end
    
    def edificarCasa
      raise NotImplementedError
    end
    
    def edificarHotel
      raise NotImplementedError
    end
    
    def hipotecar
      raise NotImplementedError
    end
    
    def pagarAlquiler
      raise NotImplementedError
    end
    
    def propietarioEncarcelado
      raise NotImplementedError
    end
    
    def setHipotecada(hipotecada)
      raise NotImplementedError
    end
    
    def tengoPropietario
      raise NotImplementedError
    end
    
    
    
  end
end
