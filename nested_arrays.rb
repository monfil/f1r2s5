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