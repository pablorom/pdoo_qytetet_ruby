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
      
      mazo_tipo
    end
    
    def self.getNombreJugadores
      lista_nombres = Array.new
      num_jugadores = 0
      nombre = ""
      puts "Introduzca el numero de jugadores"
      num_jugadores = gets.chomp.to_i
      
      for i in 1..num_jugadores
        puts "Introduzca el nombre de Jugador #{i}"
        nom = gets.chomp.to_s
        lista_nombres << nom
      end
      
      lista_nombres
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
      puts("\nCASILLAS -----------")
      puts @@juego.tablero.inspect
      nombres = getNombreJugadores
      @@juego.inicializarJuego(nombres)
      puts("\JUGADORES -----------")
      puts @@juego.jugadores.inspect
      puts("\INFO. JUGADORES -----------")
      for j in @@juego.jugadores do
        puts j
      end
    end
  end
end

ModeloQytetet::PruebaQytetet.main