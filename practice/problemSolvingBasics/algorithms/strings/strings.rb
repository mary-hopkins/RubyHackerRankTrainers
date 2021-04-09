class StringAlgorithms

    def self.camelcase(s)
        cap_letters = (s.split("")).select {|letter| letter.upcase == letter}
        cap_letters.length() + 1
    end

    def self.hackerrankInString(s)
        passcode = ["h", "a", "c", "k", "e", "r", "r", "a", "n", "k"]
    
        filtered_string = s.split("").select {|letter| passcode.include? letter}
        filtered_string.each do |letter|
            if passcode[0] == letter
                passcode.delete_at(0)
            end
        end
        if passcode.length() == 0
            return "YES"
        else
            return "NO"
        end
    end

end