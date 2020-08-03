require_relative '../lib/01_crypto_cesar'

describe "Chiffrement de Cesar" do

    it "retourne la valeur de chiffrement a 3" do
        expect(caesar_cipher("What a string!", 3)).to eq("Zkdw d vwulqj!")
    end

    it "retourne la valeur de chiffrement a 0" do
        expect(caesar_cipher("What a string!", 0)).to eq("What a string!")
    end

    it "retourne la valeur de chiffrement a 5" do
        expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end

    #it "retourne la message error si valeur superieur a 26" do
    #   expect(caesar_cipher("What a string!", 29)).to eq("Vous pouvez utiliser seulement de nombre entre 0 et 26!")
    #end

    #it "retourne la message error si valeur inferieur a 0" do
    #   expect(caesar_cipher("What a string!", -1)).to eq("Vous pouvez utiliser seulement de nombre entre 0 et 26!")
    #end

end
