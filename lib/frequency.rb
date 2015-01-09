class String
  define_method(:frequency) do |search_term|
    #search_term is to be used to find instances of the specified string in sentence_to_search.
    sentence_to_search=self.downcase.split(" ")
    #sentence_to_search sets variable containing the sentence to be searched and converts it into an array.
    times_found=0
    #times_found ticks for every search_term is found in sentence to search.  On line 6 variable is set to 0 and established outside
    #each loop which will do the counting.
    sentence_to_search.each() do |sentence_word|
      times_found+=1 if (sentence_word == search_term)
    end
    #each loop searches the array sentence_to_search for instances of the search_term by comparing sentence_word to search_term.
    return times_found
  end
end
