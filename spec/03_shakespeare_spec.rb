require_relative '../lib/03_shakespeare'

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]


book = File.read("shakespeare.txt")
banned = File.read("mots.txt").split("\n")

describe "#day_trader" do

    it " compteur de mot " do
        expect(word_counter("below", dictionnary)).to eq({"below"=>1, "low"=>1})
    end

  
    it " Nombre des mous dans le fichier banned et shakespeare " do
        s = word_counter1(book, banned)
        expect(s).to eq({"anal"=>2, "anus"=>217, "arse"=>17, "ass"=>536, "balls"=>11, "bastard"=>55, "bloody"=>93, "bum"=>1, "butt"=>30, "cock"=>31, "crap"=>2, "damn"=>74, "dick"=>31, "fag"=>1, "hell"=>72, "homo"=>1, "jerk"=>5, "muff"=>9, "nigga"=>7, "omg"=>1, "piss"=>1, "poop"=>2, "prick"=>29, "sex"=>15, "s hit"=>6, "slut"=>6, "tit"=>190, "turd"=>2, "whore"=>34})
    end

end