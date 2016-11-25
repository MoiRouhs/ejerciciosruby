# En construccion

def formato (link)
   tres = system('youtube-dl -F ' + link)
    return tres
end 

def descargar (numero,link)
    system('youtube-dl --format '+numero+' '+link)
end
print 'Script para descarga de Youtube-dl no olvides debes tenerlo instalado para usarlo'
print "Introdusca URL ===> "
enlace = gets.chomp
print formato (enlace)
puts
print "entre numero de formato ==> "

num = gets.chomp

descargar(num, enlace)
