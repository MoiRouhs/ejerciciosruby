# frozen_string_literal: false

class Clases < Processing::App
  def settings
    size 500, 500
  end

  def setup
    sketch_title 'Clases'
#    @x = 100
#    @y = 200 
  end

  def draw
  	background 0
		g = Circulo.new
		g.crear
		g.mover
  end
	class Circulo
		def initialize (x=100,y=100)
			@x = x
			@y = y
		end
		def crear
			return ellipse(@x,@y,90,90)
		end
		def mover
			if @x < width
				@x += 10
			end
		end
	end
end

