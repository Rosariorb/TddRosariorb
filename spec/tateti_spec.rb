require_relative '../katas/tateti'
require 'rspec'


describe Tateti do
  before do
    jugador_a = Jugador.new('foo_name')
    jugador_b = Jugador.new('bar_name')
    @tablero = Tablero.new(jugador_a,jugador_b)#,Tablero.new())
  end

  describe Jugador do
  end

  describe Tablero do
    before do
      #     a b c 
      #  1  x o x
      #  2  x o o
      #  3  o x x
    end

    describe 'tablero' do
      it { tablero.empty?.should_be true }
      @tablero.put(:a1,jugador_a)
      it { tablero.empty?.should_be false}
    end

    describe 'tablero ganado por x' do
      mock_tablero = Tablero.new
      #tablero.put(a1: 'x', a2: 'x', a3: 'x')
      it { mock_tablero.estado.should_be 'finalizado' }
      it { mock_tablero.get(:a1).should_be 'x' }
      it { mock_tablero.winner.should_be 'x' }
    end
  end
end
