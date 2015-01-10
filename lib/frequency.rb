class String
  define_method(:frequency) do |search_term|
    #String search_term is to be used to find instances of the specified string in sentence_to_search.
    sentence_to_search=self.downcase.split(" ")
    #Array sentence_to_search sets variable containing the sentence to be searched and converts it into an array.
    sentence_without_punctuations=[]
    sentence_to_search.each() do |unpure_word|
      sentence_without_punctuations.push(unpure_word.gsub(/\p{^Alnum}/, ''))
    end
    #Purges strings in array of all non alphanumeric characters allowing "it!" to equal "it"
    times_found=0
    #Fixnum times_found ticks for every str search_term is found in arr sentence_without_punctuations.
    #On line 6 variable is set to 0 and established outside each loop.
    sentence_without_punctuations.each() do |sentence_word|
      times_found+=1 if (sentence_word == search_term)
    end
    #each loop searches the array sentence_without_punctuations for instances of the str search_term by comparing str sentence_word to str search_term.
    return times_found
  end
end
