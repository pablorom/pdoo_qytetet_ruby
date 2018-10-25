module ModeloQytetet
  # === Clase principal del modelo.
  # Gestiona la interaccion de los jugadores con el
  # tablero y el mazo acorde a las reglas.
  class Qytetet
    include Singleton
    
    attr_accessor :NUM_SORPRESAS, :PRECIO_LIBERTAD, :SALDO_SALIDA,:mazo, :tablero, :MAX_JUGADORES, :NUM_CASILLAS, :cartaActual
      

    def initialize
      @mazo = []
      @MAX_JUGADORES = 4
      @NUM_CASILLAS = 20
      
      @NUM_SORPRESAS = 10
      @PRECIO_LIBERTAD = 200
      @SALDO_SALIDA = 1000
      
      inicializarTablero
      
    end
    
    
    #___________METODOS PRIVADOS___________
    private
    def inicializar_cartas_sorpresa
      mazo << Sorpresa.new("Te toca pasar un tiempo entre rejas. Que no se te caiga el jabon en las duchas.", 7, TipoSorpresa::IRACASILLA);
      mazo << Sorpresa.new("¿Podrías decirme cuanto es 7-6? Exacto, retrocede a la casilla numero 1.", 1, TipoSorpresa::IRACASILLA);
      mazo << Sorpresa.new("La liga antisuperstición te envía de viaje al número 13.", 13, TipoSorpresa::IRACASILLA);
      mazo << Sorpresa.new("Eh, tu. Si, tu. Suelta la pasta ahora mismo! No es nada personal…", -200, TipoSorpresa::PAGARCOBRAR);
      mazo << Sorpresa.new("¡Enhorabuena! Parece que te toca cobrar. Coge el dinero, es todo tuyo.", 100, TipoSorpresa::PAGARCOBRAR);
      mazo << Sorpresa.new("Tener propiedades mola, pero ahora te toca pagar por ellas. ¿A que ahora no mola tanto, eh?", -200, TipoSorpresa::PORCASAHOTEL);
      mazo << Sorpresa.new("¡Wow, menuda bonificacion por tus propiedades! Parece que es tu dia de suerte.", 300, TipoSorpresa::PORCASAHOTEL);
      mazo << Sorpresa.new("Te toca hacer un poco de colecta. Asi es, coge un poco de dinero de cada jugador.", 200, TipoSorpresa::PORJUGADOR);
      mazo << Sorpresa.new("Vaya, vaya… Parece que cada jugador te exige una suma de tu dinero. No seas avaro.", -100, TipoSorpresa::PORJUGADOR);
      mazo << Sorpresa.new("Toca salir del talego. Pasara un tiempo hasta que vuelvas a la carcel. ¿O no?", 0, TipoSorpresa::SALIRCARCEL);

    end
    
    
    def inicializarTablero
      @tablero = Tablero.new
      @tablero.inicializar
      
    end
    
    def encarcelarJugador
      raise NotImplementedError
    end
    
    
    def inicializarTablero
      raise NotImplementedError
    end
    
    
    def salidaJugadores
      raise NotImplementedError
    end
    
    def inicializarJugadores(nombres)
      nombres.each do |n|
        jugadores[n]<<nombres[n]
      end
    end
    
    def salidaJugadores
      raise NotImplementedError
    end
    
    
    #___________METODOS PUBLICOS___________
    public
    def actuarSiEnCasillaEdificable
      raise NotImplementedError
    end
    
    def actuarSiEnCasillaNoEdificable
      raise NotImplementedError
    end
    
    def aplicarSorpresa
      raise NotImplementedError
    end
    
    def cancelarHipoteca(numeroCasilla)
      raise NotImplementedError
    end
    
    def comprarTituloPropiedad
      raise NotImplementedError
    end
    
    def edificarCasa(numeroCasilla)
      raise NotImplementedError
    end
    
    def edificarHotel(numeroCasilla)
      raise NotImplementedError
    end
    
    def hipotecarPropiedad(numeroCasilla)
      raise NotImplementedError
    end
    
    
    def intentarSalirCarcel(metodo)
      raise NotImplementedError
    end
    
    def jugar
      raise NotImplementedError
    end
    
    def mover(numCasillaDestino)
      raise NotImplementedError
    end
        
    
    def siguienteJugador
      raise NotImplementedError
    end
    
    def tirarDado
      raise NotImplementedError
    end
    
    def venderPropiedad(numeroCasilla)
      raise NotImplementedError
    end
       
    
    
    def inicializarJuego(nombres)
      inicializarJugadores(nombres)
      inicializarTablero
      inicializarCastasSorpresa
    end
  
     
  end
end
