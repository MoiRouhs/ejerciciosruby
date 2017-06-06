# frozen_string_literal: false

class Ejemplo2 < Processing::App
  def settings
    size 500, 500
  end

  def setup
    sketch_title 'Ejemplo2'
    no_cursor
    smooth 4
  end

  def draw
  	background 99
  	fill color('#80d8ff')
  	stroke 50, 100, 220
  	stroke_weight 20
		ellipse mouse_x, mouse_y, 100, 100
  end
end
