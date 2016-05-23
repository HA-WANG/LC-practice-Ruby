# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  i, j, k = -1, -1, -1
  nums.each do |num|
    nums[i += 1] = 2
    nums[j += 1] = 1 unless num > 1
    nums[k += 1] = 0 unless num > 0
  end
  #return nil
end

p sort_colors([1,2,1,0,0,2,0])

=begin
Given an array with n objects colored red, white or blue,
sort them so that objects of the same color are adjacent, with the colors in the order red, white and blue.
Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively.

Note:
  You are not suppose to use the library's sort function for this problem.
Follow up:
  A rather straight forward solution is a two-pass algorithm using counting sort.
  First, iterate the array counting number of 0's, 1's, and 2's,
  then overwrite array with total number of 0's, then 1's and followed by 2's.
  Could you come up with an one-pass algorithm using only constant space?
=end
