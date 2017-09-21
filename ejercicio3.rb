list = [{ nombre: "Joselin", edad: 29, comuna: "Peñalolén", genero: "Femenino"}]

#1
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

#2
def edit_person(people)
  puts "Ingrese el nombre de la persona"
  name = gets.chomp
  elegido = people.select { |person| person[:nombre] == name }
  people.delete_if { |person| person[:nombre] == name }
  puts 'Estos son los valores actuales'
  puts elegido
  add_person(people)
end

#3
def delete_person(people)
  puts "Ingrese un nombre de una persona que desea eliminar"
  nombre = gets.chomp
  elegido = people.delete_if { |person| person[:nombre] == nombre }
  puts 'Usuario eliminado'
  puts elegido
end

#4 Mostrar la cantidad de personas en el sistema
def view_array(array)
  puts "La cantidad de personas en el sistema es de:"
  puts array.count
  
end
#5 falta
def commune_array(people)
  puts "Las comunas son:"
  elegido = people.select { |commune| commune[:comuna]}
  puts elegido
  puts people
end

#6 Mostrar lista de personas entre 20 y 25 años'
def show_age_range(array)
  array.select do |ele|
    puts ele[:nombre] if ele[:edad] >= 20 && ele[:edad] <= 25
  end
end

def show_ages(array)
  array.select do |ele|
    puts "#{ele[:nombre]} tiene #{ele[:edad]} años."
  end
end

 
def sum_age(array)
  max = array.max_by {|key, value| value}
  puts "El producto con mayor stock es: #{max[0].to_s}"
  puts array
  puts max
end

#8 promedio
def age_average(array)
  suma = array.inject(0) { |sum, e| sum + e[:edad] }
  i = 0
  array.each { i += 1 }
  print "El promedio de las edades es #{suma}.", "\n"
end


#9
def gender(people)
  puts "Los alumnos por genero son:"
  elegido = people.select { |gender| gender[:genero]}
  puts elegido
  puts people
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
    delete_person(list)
  when 4
    view_array(list)
  when 5
    commune_array(list)
  when 6
    show_age_range(list)
  when 7
    show_ages(list)
  when 8 
    age_average(list)
  when 9
    gender(list)
  when 10
    puts 'Adios!'
  else
    puts 'Elija una opcion correcta'
  end
end