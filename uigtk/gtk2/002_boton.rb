#!/usr/bin/env ruby
# Botón y evento click 
require 'gtk2'

ventana = Gtk::Window.new 
ventana.title = "Botón" 
ventana.default_width = 180 
ventana.default_height = 50 
ventana.border_width = 10 # Establece el ancho de los bordes alrededor del botón.

ventana.signal_connect "destroy" do
	Gtk.main_quit 
end

boton = Gtk::Button.new("Botón") # Creación del botón

# El método "signal_connect" asigna al botón un evento y una acción a ese evento. 
boton.signal_connect("clicked") do # "clicked" evento para click.
	puts "Hola Botón" # Imprime en la terminal el mensaje.
end

ventana.add(boton) # Añade el botón a la ventana
boton.show # Muestra el botón.

ventana.show 
Gtk.main 


