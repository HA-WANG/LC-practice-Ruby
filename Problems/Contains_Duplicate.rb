# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = {}
  nums.each do |num|
    return true if hash[num]
    hash[num] = true
  end
  return false
end

p contains_duplicate([1,2,3,3,5])
p contains_duplicate([1,3,5,7,9])

=begin
Given an array of integers, find if the array contains any duplicates.
Your function should return true if any value appears at least twice in the array,
and it should return false if every element is distinct.
=end
