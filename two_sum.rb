# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
#
# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# # param {Integer[]} nums
# # param {Integer} target
# # return {Integer[]}

# not fast enough...

# def two_sum(nums, target)
#   nums.each_with_index do |num1, idx1|
#     nums.each_with_index do |num2, idx2|
#       next if idx1 == idx2
#       return [idx1, idx2] if num1 + num2 == target
#     end
#   end
#   return "Couldn't find target value"
# end

def two_sum(nums, target)
  map = {}

  nums.each_with_index do |num, idx|
    i = map[num]
    return [i, idx] if i
    map[target - num] = idx
  end
end
