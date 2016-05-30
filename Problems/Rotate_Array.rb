# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  k.times { nums.unshift(nums.pop) }
  return nil
end

nums = [1,2,3,4,5,6,7]; k = 3
rotate(nums, k)
p nums

# unshift will add a new item to the beginning of an array
# pop removes the last element in an array and returns it

=begin
Rotate an array of n elements to the right by k steps.
For example, with n = 7 and k = 3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].
Note:
  Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
Hint:
  Could you do it in-place with O(1) extra space?
  Related problem: Reverse Words in a String II
=end
