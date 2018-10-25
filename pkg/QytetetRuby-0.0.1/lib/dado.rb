module ModeloQytetet
  require 'singleton'
  
  class Dado
    include Singleton
    attr_accessor :valor
    
    def inicialice;end
    
    def tirar
      @valor = rand(5)+1
    end
    
  end
end
