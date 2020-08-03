dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

dictionary1 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

book = File.read("shakespeare.txt")
mots = File.read("mots.txt").split("\n")


#2.5.1. La première version
def word_counter(corpus, dictionary)

	nbr = dictionary.length - 1
	tab = []

	for i in 0..nbr
		

	    nbr_item = corpus.downcase.split(" ").map { |item| item.include?(dictionary[i]) }.count(true)
	    
	    if nbr_item != 0
	     	 tab.push({dictionary[i] => nbr_item})
	    end

	end

	return tab

end
puts word_counter("going", dictionary)


#shakespeare
def word_counter1(mots,dictionary)

  	tab = {}

  	dictionary.map{|i|
	    if mots.include?(i) == true 
	    	tab[i] = mots.scan(i).size
	    end
	}
	
	return tab

end
puts word_counter1(book,dictionary1)