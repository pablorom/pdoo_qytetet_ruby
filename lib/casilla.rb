# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module ModeloQytetet
  class Casilla
    private_class_method :new
    
    attr_accessor :coste, :titulo, :numeroCasilla, :tipo
    
    def initialize (numeroCasilla, coste, tipo, titulo)
      
      @numeroCasilla = numeroCasilla
      @coste = coste
      @tipo = tipo
      @titulo = titulo
      
      else
    end 
     
    def self.noTipoCalle(numeroCasilla, tipo)
      new(numeroCasilla, tipo)
    end
    
    def self.tipoCalle(numeroCasilla,tipo, titulo)
      new(numeroCasilla,tipo, titulo)
    end
    
    def setTitulo(titulo)
      if (titulo.tipo == TipoCasilla::CALLE)
        @titulo = titulo
      end
    end
    
    def asignarPropietario(jugador)
      raise NotImplementedError
    end
    
    def pagarAlquiler
      raise NotImplementedError
    end
    
    def propietarioEncarcelado
      raise NotImplementedError
    end
    
    def soyEdificable
      raise NotImplementedError
    end
    
    def tengoPropietario
      raise NotImplementedError
    end
    
    
    
    
    
    def to_s
      puts "Casilla: #{@numeroCasilla}  Tipo: #{@tipo}"  
      #puts "Casilla \nTitulo : #{@titulo} \n Número de casilla: #{@numeroCasilla}  \n Precio Compra : #{@preciocompra} \n Tipo : #{@tipo}."
    end
      
      
    end
  end

