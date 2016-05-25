# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  return nums[0] if nums[0] < nums[-1]

  left, right = 0, nums.size - 1
  while right - left > 1
    mid = (right + left) / 2
    if nums[mid] < nums[left]
      right = mid
    else
      left = mid
    end
  end
  nums[right]
end

p find_min([4,5,6,7,0,1,2])

=begin
Suppose a sorted array is rotated at some pivot unknown to you beforehand.
  (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
Find the minimum element.
You may assume no duplicate exists in the array.
=end
