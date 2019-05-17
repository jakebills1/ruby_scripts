def crack(hash)
    salt = hash[0..1]
    begin 
        guess = gen_guess()
        puts guess
        hashed_guess = guess.crypt(salt)
    end until hashed_guess == hash 
    puts guess
end

def gen_guess
    response = `shuf -n 1 words.json`
    # strip qoutes and commas
    response
end
crack("abNANd1rDfiNc")