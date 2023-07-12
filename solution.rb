require 'pry'
def max_num(array)
    divisible_by_four = []
    array.map do |number|
        if number%4 == 0
            divisible_by_four << number
        end
      
    end
    divisible_by_four.max
end
num_array = [-6, -91, 1011, -100, 84, -22, 0, 1, 473]
# puts max_num(num_array)

# binding.pry
# def max_num(array)
#     filtered_array = array.select { |number| number % 4 == 0 }
#     filtered_array.max
# end

# puts max_num(num_array)

def longest_consecutive(nums)
    nums_set = Set.new(nums)
 longest_streak = 0

 nums_set.each do |num|
   if !nums_set.include?(num - 1)
     current_num = num
     current_streak = 1

     while nums_set.include?(current_num + 1)
       current_num += 1
       current_streak += 1
     end

     longest_streak = [longest_streak, current_streak].max
   end
 end

 return longest_streak
end
unsorted_array = [100,4,200,1,3,2]
# def consecutive_sequence(array)
#     consecutive_numbers =[]
#     sorted_array=array.sort
#     difference = sorted_array[1]-sorted_array[0]
#     sorted_array.each_with_index.map do |num1,index|
#         num2 = sorted_array[index+1]
#         if (num2!=nil &&(num2-num1) == difference)
#             consecutive_numbers.push(*[num1,num2])
#         end
#     end
#     consecutive_numbers.uniq.length
# end
def consecutive_sequence(array)
    sorted_array = array.sort
    difference = sorted_array[1] - sorted_array[0]
    sorted_array.each_cons(2).count { |num1, num2| num2 - num1 == difference }+1
end
  
# pp consecutive_sequence(unsorted_array)


def two_sums(nums,target)
  length=nums.length

  for i in 0...length
    for j in (i+1)...length
      if nums[i]+nums[j] == target
        return [i,j]
      end
    end
  end
  return nil
end
nums = [2,7,11,15]
pp two_sums(nums,13)