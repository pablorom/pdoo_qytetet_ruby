#encoding: utf-8


module ModeloQytetet
  require_relative "jugador"
  require_relative "sorpresa"
  require_relative "tipo_sorpresa"
  require_relative "tipo_casilla"
  require_relative "casilla"
  require_relative "titulo_propiedad"
  require_relative "tablero"
  require_relative "qytetet"
  
  class PruebaQytetet
    
    
    @@juego = Qytetet.instance

    def self.sorpresas_positivas
      mazo_positivo = Array.new
      for i in @@juego.mazo do
        if i.valor > 0
          mazo_positivo << i
        end
      end 
      return mazo_positivo
    end

    def self.sorpresas_ir_casilla
      mazo_casillas = Array.new
      for i in @@juego.mazo do
        if i.tipo == TipoSorpresa::IRACASILLA
          mazo_casillas << i
        end
      end 
      return mazo_casillas
    end

    def self.sorpresas_de_tipo(un_tipo)
      mazo_tipo = Array.new
      for i in @@juego.mazo do
        if i.tipo == un_tipo
          mazo_tipo << i
        end
      end 
      return mazo_tipo
    end
    
   
    
    def self.main()
      @@juego.inicializarCartasSorpresa
      #Mostramos las sorpresas
      puts @@juego.mazo.inspect
      puts("\nSORPRESAS POSITIVAS -------------------------------------")
      puts sorpresas_positivas.inspect
      puts("\nSORPRESAS DE TIPO IR A CASILLA -------------------------------------")
      puts sorpresas_ir_casilla.inspect
      puts("\nSORPRESAS DE TIPO ESPECIFICADO -------------------------------------")
      puts sorpresas_de_tipo(:SalirCarcel).inspect
      puts("--------------------------------------------------------------------")
 
    end
  end

  PruebaQytetet.main
end



