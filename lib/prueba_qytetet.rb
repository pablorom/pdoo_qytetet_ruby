#encoding: utf-8


module ModeloQytetet
  require_relative "jugador"
  require_relative "sorpresa"
  require_relative "tipo_sorpresa"
  require_relative "tipo_casilla"
  require_relative "casilla"
  require_relative "titulo_propriedad"
  require_relative "tablero"
  
  class PruebaQytetet
    
    
    #@@juego = Qytetet
    #@@mazo = Array.new

    def self.inicializar_sorpresas
      @@mazo << Sorpresa.new("Te toca pasar un tiempo entre rejas. Que no se te caiga el jabon en las duchas.", 7, TipoSorpresa::IRACASILLA)
      @@mazo << Sorpresa.new("¿Podrías decirme cuanto es 7-6? Exacto, retrocede a la casilla numero 1.", 1, TipoSorpresa::IRACASILLA)
      @@mazo << Sorpresa.new("La liga antisuperstición te envía de viaje al número 13.", 13, TipoSorpresa::IRACASILLA)
      @@mazo << Sorpresa.new("Eh, tu. Si, tu. Suelta la pasta ahora mismo! No es nada personal…", -200, TipoSorpresa::PAGARCOBRAR)
      @@mazo << Sorpresa.new("¡Enhorabuena! Parece que te toca cobrar. Coge el dinero, es todo tuyo.", 100, TipoSorpresa::PAGARCOBRAR)
      @@mazo << Sorpresa.new("Tener propiedades mola, pero ahora te toca pagar por ellas. ¿A que ahora no mola tanto, eh?", -200, TipoSorpresa::PORCASAHOTEL)
      @@mazo << Sorpresa.new("¡Wow, menuda bonificacion por tus propiedades! Parece que es tu dia de suerte.", 300, TipoSorpresa::PORCASAHOTEL)
      @@mazo << Sorpresa.new("Te toca hacer un poco de colecta. Asi es, coge un poco de dinero de cada jugador.", 200, TipoSorpresa::PORJUGADOR)
      @@mazo << Sorpresa.new("Vaya, vaya… Parece que cada jugador te exige una suma de tu dinero. No seas avaro.", -100, TipoSorpresa::PORJUGADOR)
      @@mazo << Sorpresa.new("Toca salir del talego. Pasara un tiempo hasta que vuelvas a la carcel. ¿O no?", 0, TipoSorpresa::SALIRCARCEL)
    end

    def self.sorpresas_positivas
      mazo_positivo = Array.new
      for i in @@mazo do
        if i.valor > 0
          mazo_positivo << i
        end
      end 
      return mazo_positivo
    end

    def self.sorpresas_ir_casilla
      mazo_casillas = Array.new
      for i in @@mazo do
        if i.tipo == TipoSorpresa::IRACASILLA
          mazo_casillas << i
        end
      end 
      return mazo_casillas
    end

    def self.sorpresas_de_tipo(un_tipo)
      mazo_tipo = Array.new
      for i in @@mazo do
        if i.tipo == un_tipo
          mazo_tipo << i
        end
      end 
      return mazo_tipo
    end
    
   
    
    def self.main(t,casilla,carcel,jugador)
      inicializar_sorpresas
      #puts(@@mazo)
      #puts("------------------------------------------------------------------------------------------------")
      #puts(sorpresas_positivas)
      #puts("------------------------------------------------------------------------------------------------")
      #puts(sorpresas_ir_casilla)
      #puts("------------------------------------------------------------------------------------------------")
      #puts(sorpresas_de_tipo(:SalirCarcel))
      #puts("------------------------------------------------------------------------------------------------")
      
      t.to_s
      casilla.to_s
      carcel.to_s
      jugador.to_s
      
    end
  end

  t = Tablero.new
  casilla = t.casillas[3]
  carcel = t.carcel
  jugador = Jugador.new("Jugador Ejemplo")
  
  prueba = PruebaQytetet.new
  
  prueba.main(t,casilla,carcel,jugador)
  
  PruebaQytetet.main
end



