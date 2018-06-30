#!/usr/bin/env ruby

require 'gtk2'

#Inicio de ventana
ventana = Gtk::Window.new
ventana.title = "Contenedores 1"
ventana.set_default_size(200, 150)
ventana.border_width = 5
ventana.signal_connect "destroy" do
	Gtk.main_quit 
end
#Inicio de botones
boton1 = Gtk::Button.new("Botón 1")
boton1.signal_connect('clicked') do
	puts "Botón 1 en caja"
end

boton2 = Gtk::Button.new("Botón 2")
boton2.signal_connect('clicked') do
	puts "Botón 2 en caja"
end

## Contenedor horizontal "HBox" y vertical "VBox"

# Creación del Contenedor Hbox para horizontal y VBox para vertical, El 20 hace referencia al espacio entre elementos.
caja1 = Gtk::HBox.new(true, 20) 

ventana.add caja1 # Añadiendo el Contenedor a la ventana

caja1.pack_start(boton1, true, true, 5) # Añadiendo el botón a el Contenedor.
# pack_start(objeto_contenido, centra_objeto, objeto_como_relleno, padding)
caja1.pack_start(boton2, true, true, 5)

ventana.show_all
Gtk.main