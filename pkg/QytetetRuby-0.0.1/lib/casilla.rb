# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

#encoding: utf-8
module ModeloQytetet
  require_relative 'tipo_casilla'
  require_relative 'titulo_propiedad'
  
  class Casilla
 
    attr_accessor :titulo
    attr_reader :numeroCasilla, :tipo, :coste
    
    def initialize (numeroCasilla, tipo, titulo, coste)
      @numeroCasilla = numeroCasilla
      @coste = coste
      @tipo = tipo
      @titulo = titulo
    end 
    # Para crear casillas de cualquier tipo.
    def self.crear_casilla(numCasilla, tipo)
      self.new(numCasilla, tipo, nil, 0)
    end
    # Para crear casillas de tipo CALLE.
    def self.crear_casilla_calle(numCasilla, titulo, coste)
      self.new(numCasilla, TipoCasilla::CALLE, titulo, coste)
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

