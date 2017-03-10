#!/usr/bin/ruby
#<Encoding:UTF-8>
# NO OLVIDE INSTALAR LAS GEMAS NECESARIAS Y MODIFICAR LA GEMA WIKIPEDIA PARA EL IDIOMA QUE QUIERA

require 'wikipedia'
require 'json'
require 'yaml' 
articulo = "alma"
dic = Hash.new
page = Wikipedia.find(articulo)

textobruto = page.text.downcase

textobruto = textobruto.split(' ')
for palabra in textobruto
  if dic.has_key?(palabra)
    dic[palabra] += 1
  else 
    dic[palabra] = 1
  end
end

# puts dic

f1 = File.open(articulo+'.json', 'w')
f2 = File.open(articulo+'.yml', 'w')
f1.write(JSON.pretty_generate(dic))
f2.puts dic.to_yaml