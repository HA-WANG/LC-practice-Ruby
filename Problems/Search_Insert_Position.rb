# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  (0...nums.size).bsearch { |i| nums[i] >= target } || nums.size
end

p search_insert([1,3,5,6], 5)
p search_insert([1,3,5,6], 2)
p search_insert([1,3,5,6], 7)
p search_insert([1,3,5,6], 0)

=begin
Given a sorted array and a target value, return the index if the target is found.
If not, return the index where it would be if it were inserted in order.
You may assume no duplicates in the array.

Here are few examples.
[1,3,5,6], 5 → 2
[1,3,5,6], 2 → 1
[1,3,5,6], 7 → 4
[1,3,5,6], 0 → 0
=end
