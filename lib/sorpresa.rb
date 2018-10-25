#encoding: utf-8

module ModeloQytetet
  # Clase que define una carta sorpresa del juego.
  # Recoge una estructura de datos con la descripcion de la carta,
  # el valor logico, y el tipo de sorpresa que representa.
  class Sorpresa
    attr_reader :texto, :valor, :tipo
    
    # Crea una nueva sorpresa con una descripcion: +texto+,
    # valor logico: +valor+, y un tipo definido: +tipo+
    def initialize(texto,valor,tipo)
      @texto = texto
      @tipo = tipo
      @valor = valor
    end

    def to_s 
      '===Sorpresa===' \
      "\n\033[32;1m Texto \033[0m : #{@texto} \n Valor: #{@valor} \n Tipo: #{@tipo}"
    end
  end
end
