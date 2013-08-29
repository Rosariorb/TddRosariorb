odule Tateti
  class Jugador
    attr_accessor :name
    def initialize(name)
      @name = name
    end
  end


  class Tablero
    def initialize(jugador_1,jugador_2)
      @jugador_1,@jugador_2 = jugador_1, jugador_2
    end

    def empty?
      true
    end
  end
end
