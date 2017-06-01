# frozen_string_literal: false

class Ejemplo1 < Processing::App
  def settings 
    size 500, 500
  end

  def setup 
    sketch_title 'Ejemplo1'  
    frame_rate 76  
  end

  def draw  
	background 0
  end
end
