require 'curses'

Curses.init_screen
Curses.curs_set(0) 

texto = "Comer"
n = 0
px = 5
py = 5

begin

  ventana = Curses::Window.new(Curses.lines - 4, Curses.cols , 0, 0)
  ventana.box('"', "-")
  ventana.refresh

  ventana2 = Curses::Window.new(3, Curses.cols - 1, Curses.lines - 4, 0)

  hilo1 = Thread.new do
    while texto != "$cerrar" 
      ventana2.box('"',"-")
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
      if(n < texto.length())
        limx = ventana.maxx - texto.length()
        limy = ventana.maxy - 1
        ventana.setpos(py, px + n )
        ventana << "#{texto[n]}"
        ventana.refresh 
        n += 1
        sleep 0.05
      else
        n = 0 
        px =  rand(2...limx) 
        py =  rand(2...limy) 
      end
    end
    sleep 0.5
    ventana1.refresh
    ventana1.close
  end
  [hilo1, hilo2].each { |h| h.join }
  Curses.close_screen
ensure
  Curses.close_screen
end
