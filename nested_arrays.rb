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
  valor = 9 - word.length 
  s = " " * valor
end 

def gato
  gato = [ ["X", "X", "O"],
         ["O", "X", "O"],
         ["O", "O", "X"] ]
  line = ""
    for r in 0..2
      for c in 0..2
        line += "| #{gato[r][c]} " + largo(gato[r][c])
        c += 1
      end
      largo = line.length + 2
      p line + " |"
      p "-" * largo
      r += 1
      line = ""
    end
end


table = [
  ["Nombre", "Edad", "Género", "Grupo", "Calificaciones"],
  ["Rodigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]],
  ["Fernanda González", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]],
  ["Luis Pérez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]],
  ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]],
  ["Pablo Morán", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]],
]

chess
gato

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6