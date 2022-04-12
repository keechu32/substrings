def substrings(input_word, dictionary)
    result={}
    lowered_input_word=input_word.downcase
    dictionary.each do |word|
        result[word]=lowered_input_word.scan(word).size if lowered_input_word.include? word
    end
    puts result
end
input_word="below"
input_array=["below","down","go","going","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings(input_word,input_array)
=begin
puts ("Enter input word")
input_word=gets
puts ("Enter input array")
input_array=gets.chomp.split('')
substrings(input_word,input_array)  
=end
puts substrings("Howdy partner, sit down! How's it going?",input_array)