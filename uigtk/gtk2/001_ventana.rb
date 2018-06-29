#!/usr/bin/env ruby
# Ventana básica
require 'gtk2' #Librería a utilizar para crear la ventana.

ventana = Gtk::Window.new # Se crea la ventana.

ventana.title = "Hola" # Título de la ventana.
ventana.default_width = 300 # Ancho de la ventana.
ventana.default_height = 300 # Alto de la ventana.

# Esta función cierra la venta y termina el proceso al presionar en la x
ventana.signal_connect "destroy" do
	Gtk.main_quit # Finaliza el ciclo que hace visible la ventana.
end

ventana.show # Hace visible la ventana.
Gtk.main # Genera el ciclo que mantiene visible la ventana


