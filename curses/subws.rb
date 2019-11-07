#=> #<Encoding:UTF-8>
require 'curses'

Curses.init_screen
#Curses.noecho()
Curses.curs_set(0) 

texto = "Comer"
n = 0
px = 5
py = 5
x = 2

begin
  ventana = Curses::Window.new(Curses.lines - 3, Curses.cols , 0, 0)
  ventana2 = Curses::Window.new(3, Curses.cols, Curses.lines - 3, 0)

  hilo1 = Thread.new do
    while texto != "$cerrar"
      ventana2.box('|',"-")
      ventana2.setpos(ventana2.maxy / 2, 2)
      ventana2.refresh
      mensajes =  ventana2.getstr
      texto = mensajes
      ventana2.clear
      ventana2.refresh
    end
    sleep 0.5
    ventana2.refresh
    ventana2.close
  end

  hilo2 = Thread.new do
      while texto != "$cerrar"
      if n < texto.length() 
        limx = ventana.maxx - texto.length()
        limy = ventana.maxy - 1
        ventana.clear
        ventana.box('|', "-")
        subven = ventana.subwin(2 + (n * 2),2 + (n * 2),10 - n,30 - n)
        subven.box("|","-")
        ventana.refresh
 
        n += 1
        x = x < ventana.maxx - subven.maxx - 1 ? x + 1 : 1
        sleep 0.15
      else
        n = 0 
        px =  rand(2...limx) 
        py =  rand(2...limy)
        
        ventana.clear #.erase #.clrtoeol
        ventana.refresh
      end
    end
    sleep 0.5
    ventana1.refresh
    ventana1.close
  end
  [hilo1, hilo2].each { |h| h.join }
  Curses.refresh
  Curses.close_screen
ensure
  Curses.close_screen
end
