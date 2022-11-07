=begin 

Background
There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters.

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are seperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation


input: string 
output: string (sorted - except first and last chars)

distinct challenges: 
1. getting the middle substring (and preserving the first and last characters along with any leading or trailing punctuation)
    - Split input string into an array of words

    - split each word into an array of characters
    - identify which character is an alphabetical character. 
      - helper method?
        alphabetic?
        char =~ /[a-z]/
    - 
     
2. PRESERVING the position of punctuation characters and REINSERTING them into the middle string after sorting
  (PRESERVING)
    - input: the middle substring (any leading or trailing punctuation can be stored with the first and last alpha characters)
    - output: an array of subarrays which contain the character and its position so that it can be reinserted into the middle string later
     algorithm:
        - set `punct_arr` to an empty array for housing the punct chars and their indexes
        - for each character in the middle substring, IF it is a punctuation character,
            store it along with its index in `punct_arr` (i.e. the array holding punct chars and their indexes)
  (REINSERTING)
    - inputs: sorted middle string with first and last characters added back in and array of sub arrays containing punctuation [0] and their indexes [1]from the original string
    - output: a string with punctuation reinserted into the correct place in the sorted middle string
     algorithm:
    - for each subarray in `punct_arr`, insert the char [0] at its index [1] into the middle string 
3. sorting the middle substring
4. joining all the words back into a single string
=end 



def non_alphabetical_with_index(str)
  result = []
  words = str.split
  
  words.each do |word|
    word.chars.each_with_index do |char, index|
      result << [char,index] if char =~ /[^a-z]/
    end
  end
  result
end

def clean_chars(str)
  middle_chars = []
  
  str.chars.select do |char|
    middle_chars << char if char =~ /[a-z]/
  end
  middle_chars
end


def reinsert_punct(string, arr)
  arr.each do |sub_arr|
    string.insert(sub_arr[1], sub_arr[0])
  end
  string
end


def scramble_words(str)
  words = str.split ' '
  words = words.map do |word|
    punct_arr = non_alphabetical_with_index(word)
    # remove punctuation from word (reassign to `word`)
    word = clean_chars(word)
    # remove and store the first and last characters in word
    first, last = word.shift, word.pop
    # sort the chars in word
    word = word.sort
    # add the first and last characters back onto the sorted word
    word = word.unshift(first).push(last)
    # reinsert the punctuation at the appropriate indexes
    reinsert_punct(word, punct_arr).join
  end

  words.join ' '
end




p scramble_words('.card-carrying,') == '.caac-dinrrryg,'
p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

