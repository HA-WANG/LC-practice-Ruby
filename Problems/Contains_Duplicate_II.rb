# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  hash = {}
  nums.each_with_index do |num, idx|
    return true if hash[num] && (hash[num] - idx).abs <= k
    hash[num] = idx
  end
  return false
end

p contains_nearby_duplicate([1,2,3,4,5,2], 3)
p contains_nearby_duplicate([1,2,3,4,5,2], 4)

=begin
Given an array of integers and an integer k,
find out whether there are two distinct indices i and j in the array
such that nums[i] = nums[j] and the difference between i and j is at most k.
=end
