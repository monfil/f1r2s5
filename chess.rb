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