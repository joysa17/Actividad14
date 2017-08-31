list = [{ nombre: "Joselin", edad: 29, comuna: "Peñalolén", genero: "Femenino"}]

def add_person(array)
  puts 'Ingrese nombre'
  name = gets.chomp
  puts 'Ingrese edad (sólo números)'
  age = gets.chomp
  puts 'Ingrese comuna'
  commune = gets.chomp
  puts 'Ingrese género (Masculino / Femenino)'
  gender = gets.chomp
  array.push(nombre: name, edad: age.to_i, comuna: commune, genero: gender)
  print "Se ha ingresado el usuario: \n #{array}"
  puts
end

def edit_person(people)
  puts "Ingrese el nombre de la persona"
  name = gets.chomp
  elegido = people.select { |person| person[:nombre] == name }
  people.delete_if { |person| person[:nombre] == name }
  puts 'Estos son los valores actuales'
  puts elegido
  add_person(people)
end

puts 'Bienvenido al Sistema de Gestión de Alumnos!, seleccione su opción:'

option = 0

while option != 10
  puts
  puts '1. Ingresar datos de una persona'
  puts '2. Editar datos de una persona'
  puts '3. Eliminar una persona'
  puts '4. Mostrar la cantidad de personas en el sistema'
  puts '5. Mostrar comunas de todas personas'
  puts '6. Mostrar lista de personas entre 20 y 25 años'
  puts '7. Mostrar suma de todas las edades de personas'
  puts '8. Mostrar promedio edades del grupo'
  puts '9. Mostrar lista de alumnos por género'
  puts '10.Salir'

  option = gets.chomp.to_i

  case option
  when 1
    add_person(list)
  when 2
    edit_person(list)
  when 3
    puts 'eligio 3'
  when 4
    puts 'eligio 4'
  when 5
    puts 'eligio 5'
  when 6
    puts 'eligio 6'
  when 10
    puts 'Adios!'
  else
    puts 'Elija una opcion correcta'
  end
end