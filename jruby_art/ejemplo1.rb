# frozen_string_literal: false

class Ejemplo1 < Processing::App
  def settings # Método settings.
    size 500, 500 # tamaño de la ventana.
  end

  def setup # Método setup
    sketch_title 'Ejemplo1' # Nombre del sketch. 
    frame_rate 76 # Número de frames por segundo. 
  end

  def draw # Método draw 
		background 0 # una de las caracteristicas de la ventana, en este caso el color de fondo de pantalla.
  end
end
