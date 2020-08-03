
def caesar_cipher (str, cle)


    # Verification si le nombre est entre 0 a 26
    if cle >= 0 && cle <= 26

        code_ascii = str.split(//).map!{ |a| a.ord }
        cle2 = code_ascii.map!

        for nbr_code_ascii in cle2

            if nbr_code_ascii <= 122 && nbr_code_ascii >= 97

                nbr_code_ascii = nbr_code_ascii + cle

                if nbr_code_ascii > 122
                    nbr_code_ascii = (nbr_code_ascii - 122) + (97 - 1)
                else
                    nbr_code_ascii = nbr_code_ascii
                end

            elsif nbr_code_ascii <= 90 && nbr_code_ascii >= 65

                nbr_code_ascii = nbr_code_ascii + cle

                if nbr_code_ascii > 90
                    nbr_code_ascii = (nbr_code_ascii - 90) + (65 - 1)
                else
                    nbr_code_ascii = nbr_code_ascii
                end

            else
                nbr_code_ascii = nbr_code_ascii
            end
        end

        return cle2.each{ |b| b.chr }.join

    else
        return "Vous pouvez utiliser seulement de nombre entre 0 et 26! "
    end
end

#
puts caesar_cipher("What a string!", 3)
puts caesar_cipher("What a string!", 0)
puts caesar_cipher("What a string!", 5)
#puts caesar_cipher("What a string!", 29)
#puts caesar_cipher("What a string!", -1)