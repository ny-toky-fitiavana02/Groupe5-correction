
def multiple_3_ou_5(number)
  
    if number % 3 == 0 or number % 5 == 0
        return true
    else
        return false
    end

end

def somme_de_multiple_3_ou_5(fnbr)

    a = 0
    b = []

    if fnbr.is_a?(Integer) && fnbr >= 0

        while a != fnbr 
          if multiple_3_ou_5(a)
            b << a
          end
          a += 1
        end

        return b.inject(0) { |som,x| som + x}

    else
        return "Entrer un nombre entier naturel seulement!"
    end

end
puts somme_de_multiple_3_ou_5(11)

def sommeMultiple(nbr)

    total = 0
    nbr = Array(1..1000)
    multiples = Array.new

    for i in nbr
        if i%3 == 0 or i%5 == 0
            multiples << i
        end
    end
    
    multiples.each do |i| 
        total+= i 
    end

    return total

end
puts sommeMultiple(5)