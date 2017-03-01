  def largo(word)
    valor = 9 - word.length 
    s = " " * valor
  end 

def chess
  tablero = [
    ["Torre-N", "Caballo-N", "Alfil-N", "Reina-N","Rey-N", "Alfil-N", "Caballo-N", "Torre-N"],
    ["Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N"],
    ["Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro"],
    ["Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco"],
    ["Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro"],
    ["Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco"],
    ["Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B"],
    ["Torre-B", "Caballo-B", "Alfil-B", "Reina-B", "Rey-B", "Alfil-B", "Caballo-B", "Torre-B"],
    ]
    line = ""
    for r in 0..7
      for c in 0..7
        line += "| #{tablero[r][c]} " + largo(tablero[r][c])
        c += 1
      end
      largo = line.length + 2
      p "-" * largo
      p line + " |"
      r += 1
      line = ""
    end
    p "-" * largo
end


table = [
  ["Nombre", "Edad", "Género", "Grupo", "Calificaciones"],
  ["Rodigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]],
  ["Fernanda González", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]],
  ["Luis Pérez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]],
  ["Ana Espinosa", 14, "Femenino", "Segundi", [9, 9, 6, 8, 8]],
  ["Pablo Morán", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]],
]

chess

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6