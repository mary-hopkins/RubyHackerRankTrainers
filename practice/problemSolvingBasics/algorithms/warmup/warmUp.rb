class WarmUp

    def self.solveMeFirst(a, b)
        return a + b
    end

    def self.simpleArraySum(ar)
        result = 0
        ar.each do |number|
        result = result + number
        end
        return result
    end

    def self.compareTriplets(a, b)
        final_a = 0
        final_b = 0
        result = []
        3.times do |i| 
            if a[i] == b[i]
                
            elsif a[i] > b[i]
                final_a += 1
            elsif a[i] < b[i]
                final_b += 1
            end
        end
        result << final_a
        result << final_b
        return result
    end

end
