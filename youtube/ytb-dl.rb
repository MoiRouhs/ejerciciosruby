#!/usr/bin/ruby
#=> #<Encoding:UTF-8>

formato = 0
arreglo = Array.new

#-------------Funcion para saber si es un enlace valido o no --------------------------#
def validarenlace(entrada)
    if (entrada.include? 'https://www.youtube.com/watch?') == true 
        return true
    else
        return false
    end
end

#-------------Funcion desanbiguacion --------------------------#
def analisis (entrada)
    case entrada
    when true
    
    when false
    
    else
    
    end 
end


def formato (link)
   tres = system('youtube-dl -F ' + link)
    return tres
end 

def descargar (numero,link)
    system('youtube-dl --format '+numero+' '+link)
end

#*********** UI ****************
print 'Script para descarga de Youtube-dl no olvides debes tenerlo instalado para usarlo'
print "Introdusca URL ===> "
enlace = gets.chomp
print formato (enlace)
puts
print "entre numero de formato ==> "

num = gets.chomp

descargar(num, enlace)
