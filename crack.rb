require 'random-word'
def crack(hash)
    # seperates salt from hash
    salt = hash[0..1]
    # generates guess at password
    # encrypts guess with crypt() with salt from input
    # checks if hashed guess is the same as input, if yes, return true, if no, generate another guess
    begin 
        guess = gen_guess()
        hashed_guess = guess.crypt(salt)
    end until hashed_guess == hash 
    puts guess
end

def gen_guess
    response_1 = RandomWord.nouns.next 
    response_2 = RandomWord.adjs.next
    return rand(100) % 2 == 0 ? response_1 : response_2
end
crack("abNANd1rDfiNc")