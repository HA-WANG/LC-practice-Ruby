# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  min_idx = (0...nums.size).bsearch { |i| nums[i] >= target }
  return [-1, -1] if (min_idx.nil?) || (nums[min_idx] != target)

  max_idx = (min_idx...nums.size).bsearch { |i| nums[i] > target }
  return [min_idx, nums.size - 1] if max_idx.nil?
  return [min_idx, max_idx - 1]
end

p search_range([5, 7, 7, 8, 8, 10], 8)

=begin
Given a sorted array of integers, find the starting and ending position of a given target value.
Your algorithm's runtime complexity must be in the order of O(log n).
If the target is not found in the array, return [-1, -1].
For example,
  Given [5, 7, 7, 8, 8, 10] and target value 8,
  return [3, 4].
=end
