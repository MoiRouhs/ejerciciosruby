load_library :control_panel # Se carga la libreria de panel de control
attr_reader :panel # Habilita solo la lectura del pael

def settings
	size 600, 600
end

def setup
	control_panel do |c| # Inicia el panel de control 
		c.title = "Slider" # Titúlo del panel de control
		c.slider	:Tamano, 10..300, 20 # Controla la variable de nombre Tamano dandole la posibilidad de estar entre 10 al 300 y avanzar de 20 en 20
		@panel = c # la variable que transmite la información al panel.
	end
	@Tamano = 50 # Valor inicial de la variable
end

def draw
	unless @hide # El bucle mantiene abierto el panel de control durante la ejecución del sketch
		hide = true 
		panel.set_visible(hide)
	end
	background color('#e91e63')
	fill (color('#9c27b0'))
	ellipse(300,300,@Tamano,@Tamano)
end
