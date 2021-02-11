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

    def self.aVeryBigSum(ar)
        result = 0
        
        ar.each do |number|
            result = result + number
            
        end
        return result
    end

    def self.diagonalDifference(arr)
        number_of_rows = arr[0].length
        diag_one_array = []
        diag_two_array = []
    
        count = number_of_rows - 1
        for i in 0..count
            diag_one_array << arr[i][i] 
        end
    
        count = 0
        neg_count = -1
        number_of_rows.times do
            diag_two_array << arr[count][neg_count]
            neg_count = neg_count - 1
            count = count + 1 
        end

        diag_num_one = diag_one_array.inject(0){|sum,x| sum + x }
        diag_num_two = diag_two_array.inject(0){|sum,x| sum + x }
        
        total = diag_num_one - diag_num_two 
        return (total).abs
    
    end

    def self.plusMinus(arr)
        arr_length = arr.length
        zeros = 0
        positives = 0
        negatives = 0

        arr.each do |n|
            if n == 0
                zeros += 1
            elsif n < 0
                negatives += 1
            elsif n > 0
                positives += 1
            else
                puts("We've had problems")
            end
        end

        zeros = zeros.to_f / arr_length
        positives = positives.to_f / arr_length
        negatives = negatives.to_f / arr_length

        results_array = []
        results_array << ("%.6f" % positives).to_s
        results_array << ("%.6f" % negatives).to_s
        results_array << ("%.6f" % zeros).to_s

        return results_array
    end

    def self.staircase(n)
        result_array = []
        count = 1
        n.times do 
            stair = ""
            (n - count).times { stair << " " }
            count.times {stair << "#"}
            count += 1
            result_array << stair
        end
        return result_array
    end

    def self.miniMaxSum(arr)
        sorted_array = []
        
        while sorted_array.length < 5 do
            smallest = arr[0]
            for num in arr
                if num < smallest
                    smallest = num
                end
            end
            sorted_array << smallest
            arr.delete_at(arr.index(smallest))
        end

        highest = sorted_array[1..4].sum()
        lowest = sorted_array[0..3].sum()
    
        return "#{lowest} #{highest}"
    end

    def self.birthdayCakeCandles(candles)
        tallest = candles[0]
        count = 0
        for candle in candles
           if candle > tallest
            tallest = candle
           end
        end
        for candle in candles
            if candle == tallest
                count = count + 1
            end
        end
        return count
    end

    def self.timeConversion(s)
        am_pm = s[-2]
        hour = s[0..1].to_i
        time = s[2..7]
        
        if am_pm == "P" && hour != 12
            hour = hour + 12
        elsif am_pm == "A" && hour == 12
            hour = 0
        end
        
        hour < 10 ? hour = "0#{hour}" : hour.to_s
        return hour.to_s + time.to_s
    end

end
