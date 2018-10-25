# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

class Sorpresa
      def initialize(texto,tipo,valor)
        @texto = texto
        @tipo = tipo
        @valor = valor
      end
      
      # para leer las atributos de un objeto
      def texto
        @texto
      end

      def tipo
        @tipo
      end
      
      def valor
        @valor
      end
     
      def to_s 
        "Texto: #{@texto} \n Valor: #{@valor} \n Tipo: #{@tipo}"
      end
    end
