# frozen_string_literal: false

class Arreglo < Processing::App
  def settings
	@puntos = Array.new
	@num = 10
	size 500, 500
  end

  def setup
    sketch_title 'Arreglo'
    for f in 0...@num * 2
    	@puntos.push(Punto.new(rand(500),rand(500)))
    end
    puts @puntos.length
  end

  def draw
  	background(240)
  	@puntos.each do |j|
  		j.crear
  	end
  end
  class Punto
  	def initialize (x,y)
  		@x = x
  		@y = y
  	end	
  	def crear
			strokeWeight(50)
			point(@x,@y)
		end
	end
end
