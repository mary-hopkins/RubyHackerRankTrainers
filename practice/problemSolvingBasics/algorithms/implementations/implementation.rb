class Implementation
    def self.wiring()
        return true
    end

    def self.gradingStudents(grades)
        curved_grades = []
    
        for grade in grades
            if grade < 38
                curved_grades << grade
                next
            end
            
            next_tier = false
            for i in (1..2)
                if (grade + i) % 5 == 0
                    next_tier = grade + i
                end
            end

            if next_tier == false
                curved_grades << grade
                next
            else
                curved_grades << next_tier
                next
            end

        end
        return curved_grades
    end

    def self.countApplesAndOranges(s, t, a, b, apples, oranges)
        apple_count = 0
        orange_count = 0
        
        for apple in apples
           drop_point = apple + a
           if drop_point >= s && drop_point <= t
                apple_count += 1
           end   
        end
        for orange in oranges
            drop_point = orange + b
            if drop_point >= s && drop_point <= t
                orange_count += 1
            end
        end
        
        return [apple_count, orange_count]
    
    end

    def self.kangaroo(x1, v1, x2, v2)
        one_start = x1
        one_jump = v1
        one_land = 0
        
        two_start = x2
        two_jump = v2
        two_land = 0
        
        while one_land <= 100000000 && two_land <= 100000000 do
            one_land = one_start + one_jump
            two_land = two_start + two_jump
            if one_land == two_land
                return "YES"
            else 
                one_start = one_land
                two_start = two_land
            end
            
        end
            
        return "NO" 
    
    end

    def self.breakingRecords(scores)
        min_score = scores[0]
        min_count = 0
        max_score = scores[0]
        max_count = 0
        
        for score in scores
            if score > max_score
                max_score = score
                max_count += 1
            elsif score < min_score
            min_score = score
            min_count += 1
           else
            next
           end
        end
        return [max_count, min_count]
    end

    def self.birthday(s, d, m)
        number_of_answers = 0
        
        if s[0] == d && s.length == 1
            return 1
        end
             
        s.each_with_index do |item, index|
            test_sum = item
            current_index = index
            (m - 1).times do |num|
                current_index += 1
                if s[current_index] != nil
                    test_sum = test_sum + s[current_index]
                end
            end
            
            if test_sum == d
                number_of_answers += 1
            end
        end

        return number_of_answers
    end

    def self.migratoryBirds(arr)
        types_hash = {}
        
        for type in arr
           if types_hash.key?(type)
            types_hash[type] += 1
           else
            types_hash[type] = 1
           end
        end
        
        answer = 0;
        answer_size = 0;
        types_hash.each do |key,value|
            if value == answer_size && key < answer
                answer = key
                puts "value: #{value} == answer_size: #{answer_size}"
            elsif value > answer_size
                answer_size = value
                answer = key
            end
        end
        
        return answer
    
    end

    def self.hurdleRace(k, height)
        biggest_hurdle = 0
        potion_doses = 0
        
        for hurdle in height
            if hurdle <= k
                next
            else
                if hurdle > biggest_hurdle
                    biggest_hurdle = hurdle
                    potion_doses += hurdle - k
                end
            end
        end
        return potion_doses
    end

    def self.happyLadybugs(b)
        bug_array = b.split("")
    
        return "NO" if bug_array.length <= 1 && bug_array[0] != "_"
        
        if bug_array.include? "_"
            bug_array = bug_array.sort
        end

        bug_array.each_with_index do |bug, index|
            if bug === "_"
                next
            elsif (bug == bug_array[index + 1]) || (bug == bug_array[index - 1])
                next
            else
                return "NO"
            end
        end
        return "YES"    
    end
    
end