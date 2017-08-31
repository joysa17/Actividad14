  nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

 
# Se pide:
# 1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.
a = nombres.select { |e| e.length > 5 }
puts a
puts "#################################"
# 2. Utilizando .map crear una arreglo con los nombres en minúscula.

c = nombres.map { |x| x.downcase }
puts c 
puts "#################################"
# 3. Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
d = nombres.select { |e| e[0]=='P'}
puts d
puts "#################################"
# 4. Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.

f = nombres.map { |e| e.length  }
puts f
puts "#################################"
# 5. Utilizando .map y .gsub eliminar las vocales de todos los nombres.
g = nombres.map { |e| e.gsub(/[AEIOUaeiou]/, '') }
puts g
puts "#################################"