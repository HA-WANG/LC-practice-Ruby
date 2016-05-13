# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  len, index = 0, 0

  while index < nums.size
    num = nums[index]
    index += 1
    while num == nums[index]
      index += 1
    end
    nums[len] = num
    len += 1
  end
  len
end

p remove_duplicates([1,1,2])
p remove_duplicates([1,1,2,2,3])
p remove_duplicates([1,2,3,5,5])

=begin
Given a sorted array, remove the duplicates in place
such that each element appear only once and return the new length.
Do not allocate extra space for another array, you must do this in place with constant memory.
For example,
  Given input array nums = [1,1,2],
  Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
  It doesn't matter what you leave beyond the new length.
=end
