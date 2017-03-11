#!/usr/bin/ruby
#<Encoding:UTF-8>
# NO OLVIDE INSTALAR LAS GEMAS NECESARIAS Y MODIFICAR LA GEMA WIKIPEDIA PARA EL IDIOMA QUE QUIERA

require 'wikipedia'
require 'json'
require 'yaml'
load 'rufino.rb'

articulo = "dolor"
page = Wikipedia.find(articulo)

textobruto = page.text.downcase
textobruto.limpiar_caracteres
textobruto = textobruto.split(' ')
textobruto = textobruto.ngramas 3



f1 = File.open(articulo+'.json', 'w')
f2 = File.open(articulo+'.yml', 'w')
f1.write(JSON.pretty_generate(textobruto))
f2.puts textobruto.to_yaml