# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module ModeloQytetet
  
  requite "singleto"
  
  class Dado
    attr_accessor :valor
    
    def inicialice
      @valor
    end
    
    def tirar
      @valor = rand(6)+1
    end
    
  end
end
