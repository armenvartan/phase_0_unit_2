# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself].


# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it.

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]

    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else
        encoded_sentence << element
      end
     end

    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing? It turns the string to an array
# 2. How does the rotate method work? What does it work on? It moves the array so that the first element is at the spot that you put (in this case 4), so 0 would become -4
# 3. What is `each_char` doing? It iterates over each character in a string, and does whatever you put in the block
# 4. What does `sample` do? It picks a random element from an array, or more if you choose (sample(2) picks 2 random elements)
# 5. Are there any other methods you want to understand better? I looked up .zip. that's a cool one too
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# This code looks better. I think the hash is better for the cipher solution, because
# you can't see this solution. The equation could have been much more complicated,
# and having a hash of that sort allows you more freedom to adjust the solution.
# 7. Is this good code? What makes it good? What makes it bad?
# It seems like good code to me. It's easy to follow, the variable names are easy to
# understand, and there isn't anything unecessary that I see in the code.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection

# It's cool to see your guy's code. I haven't gotten to read much code, yet, so my style
# has only been adulterated by the few times I've paired with people and the reading materials.
# The code makes sense to me, and I learned some new methods that I'm excited to implement.
