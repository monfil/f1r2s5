def largo(word)
  valor = 1 - word.length 
  s = " " * valor
end

def generate(value, times, array)
  times.times do 
     array << value
  end
end

def gatito
	turn = ["X", "O"].sample
	arr =[]
	5.times do
		arr << turn
	end
	arr[0] == "X" ? generate("0", 4, arr) : generate("X", 4, arr)
	gato = Array.new(3) {arr.shuffle!.pop(3)}
end

def tablero(gato)
	line = ""
    for r in 0..2
      for c in 0..2
        line += "| #{gato[r][c]} " + largo(gato[r][c])
        c += 1
      end
      p line + "|"
      p "-" * line.length
      r += 1
      line = ""
    end
end

tablero(gatito)

table = [
  [["Nombre", "Rodigo García"], ["Edad", 13], ["Sexo", "Masculino"], ["Grupo", "Primero"], ["Calificaciones", [9, 9, 7, 6, 8]]],
  [["Nombre","Fernanda González"],["Edad", 12], ["Sexo", "Femenino"], ["Grupo", "Tercero"], ["Calificaciones", [6, 9, 8, 6, 8]]],
  [["Nombre", "Luis Pérez"], ["Edad", 13], ["Sexo", "Masculino"], ["Grupo", "Primero"], ["Calificaciones", [8, 7, 7, 9, 8]]],
  [["Nombre", "Ana Espinosa"], ["Edad", 14], ["Sexo", "Femenino"], ["Grupo", "Segundo"], ["Calificaciones", [9, 9, 6, 8, 8]]],
  [["Nombre", "Pablo Morán"], ["Edad", 11], ["Sexo", "Masculino"], ["Grupo", "Segundo"], ["Calificaciones", [7, 8, 9, 9, 8]]]
	]
def arr_to_hash(array)
	array.map do |person|
	  Hash[[ [person[0][0],person[0][1]], [person[1][0], person[1][1]], [person[2][0], person[2][1]], [person[3][0], person[3][1]], [person[4][0], person[4][1]] ]]
  end
end

p arr_to_hash(table)