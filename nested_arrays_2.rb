def print_first_last(piezas, color, index_c,row)
  if row < 5
      print "|#{piezas[row]}-#{color[index_c]}|\t"
    elsif row == 5
      print "|#{piezas[row-3]}-#{color[index_c]}|\t"
    elsif row == 6
      print "|#{piezas[row-5]}-#{color[index_c]}|\t"
    elsif row == 7
      puts "|#{piezas[row-7]}-#{color[index_c]}|"
    end
end

def print_pawn(color, index_c, col)
    print "|P-#{color[index_c]}|\t"
    puts if col == 7
end

def print_empty(color, index_c)
  for col in 0..7
    if index_c == 0
      if col < 1
        print "|c-#{color[col+1]}|\t" 
      elsif col == 1
        print "|c-#{color[col-1]}|\t" 
      elsif col == 2
        print "|c-#{color[col-1]}|\t" 
      elsif col == 3
        print "|c-#{color[col-3]}|\t" 
      elsif col == 4
        print "|c-#{color[col-3]}|\t" 
      elsif col == 5
        print "|c-#{color[col-5]}|\t" 
      elsif col == 6
        print "|c-#{color[col-5]}|\t" 
      elsif col == 7 
        puts "|c-#{color[col-7]}|"
      end
    else
      if col < 1
        print "|c-#{color[col]}|\t"
      elsif col == 1
        print "|c-#{color[col]}|\t"
      elsif col == 2
        print "|c-#{color[col-2]}|\t" 
      elsif col == 3
        print "|c-#{color[col-2]}|\t" 
      elsif col == 4
        print "|c-#{color[col-4]}|\t" 
      elsif col == 5
        print "|c-#{color[col-4]}|\t" 
      elsif col == 6
        print "|c-#{color[col-6]}|\t" 
      elsif col == 7 
        puts "|c-#{color[col-6]}|"
      end  
    end
  end
end

def chess
  piezas = ["T", "C", "A", "R", "r"]
  color = ["N", "B"]

  for row in 0..7
    for col in 0..7
      print_first_last(piezas, color, 0, col) if row == 0
      print_pawn(color, 0, col) if row == 1
    end
    if row % 2 == 0 && row < 6
      print_empty(color, 0)
    elsif row % 2 != 0 && row < 6
      print_empty(color, 1) 
    end
    for col in 0..7
      print_pawn(color, 1, col) if row == 6
      print_first_last(piezas, color, 1, col) if row == 7
    end
    puts "-" * 61
  end
end

chess


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