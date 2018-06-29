require "gtk3" # cargar libreria gtk3

# Se carga archivo xml con la interfaz o parte de ella en código xml
ventana_ui ="#{File.expand_path(File.dirname(__FILE__))}/ventana.ui"

# Otra parte de la interfaz en xml
boton_ui ="#{File.expand_path(File.dirname(__FILE__))}/boton.ui"

# Construcción de la interfaz mendiate Gtk::Builder tanto para ventana y boton
constructor_ventana = Gtk::Builder.new(:file => ventana_ui)
contructor_boton = Gtk::Builder.new(:file => boton_ui)

# Cargando el objeto botón con id="boton" en el archivo xml
boton = contructor_boton.get_object("boton")

# Asignación de evento al botón
boton.signal_connect("clicked"){puts "Hola mundillo"}	

# caegando el objeto ventana del xml
ventana = constructor_ventana.get_object("ventana")

# Asignandole las funciones de cerrar,minimizar y maximizar a los botones por defecto de la ventana
ventana.signal_connect("destroy"){Gtk.main_quit}

# Agregando el botón a la ventana
ventana.add(boton)

# Arrancando el ciclo que mantiene la ventana visible.
Gtk.main
