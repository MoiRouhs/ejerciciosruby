#!/usr/bin/ruby
#<Encoding:UTF-8>

class String
# Pone la primera letra de cada palabra en mayuscula
  def capitular
    resultado = []
    text = self.split(' ')
      text.each do |x|
        resultado.push(x.capitalize)
      end 
      return resultado.join(' ').to_s
  end
#Limpia la cadena de texto de los caracteres especiales 
  def limpiar_caracteres
    caracretes_especiales = ['"',"...","¿","?","=","_","[","]","(",")",",",".",":",";","!","¡","«","»","*","~","' "," '","- "," -","--","%","#","'"]
    for caracter_especial in caracretes_especiales
      self.gsub!(caracter_especial,'')
    end
  end  

end

class Array
# Cuenta el numero de palabras  
  def contar_palabras
    dic = Hash.new
    for palabra in self
      if dic.has_key?(palabra)
        dic[palabra] += 1
      else 
        dic[palabra] = 1
      end
    end
    return dic
  end
# Genera ngramas se le puede enviar un argumento que coresponde al numero de palabras del ngrama
  def ngramas (argu = 2)
    arg = argu -1
    dic = Hash.new
    for ng in 0...self.length - arg
      ngrama = String.new
      for cantidad_gramas in 0..arg 
        if(cantidad_gramas == 0)
          ngrama = self[ng]
        else
          ngrama = ngrama + " " +self[ng + cantidad_gramas]
        end  
      end
      if dic.has_key?(ngrama)
        dic[ngrama] += 1
      else
        dic[ngrama] = 1
      end
    end
    return dic
  end
  
end