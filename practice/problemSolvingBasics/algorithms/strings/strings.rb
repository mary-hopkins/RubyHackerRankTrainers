class StringAlgorithms

    def self.camelcase(s)
        cap_letters = (s.split("")).select {|letter| letter.upcase == letter}
        cap_letters.length() + 1
    end

end