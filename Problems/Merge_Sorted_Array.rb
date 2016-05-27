# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  arr1, arr2 = m - 1, n - 1
  nums1_idx = m + n - 1

  while arr1 >= 0 && arr2 >= 0
    if nums1[arr1] > nums2[arr2]
      nums1[nums1_idx] = nums1[arr1]
      nums1_idx -= 1
      arr1 -= 1
    else
      nums1[nums1_idx] = nums2[arr2]
      nums1_idx -= 1
      arr2 -= 1
    end
  end

  while arr2 >= 0
    nums1[nums1_idx] = nums2[arr2]
    nums1_idx -= 1
    arr2 -= 1
  end
  return nil
end

nums1 = [1,3,5,0,0]
nums2 = [2,4]
m, n = 3, 2
merge(nums1, m, nums2, n)
p nums1

=begin
Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
Note:
  You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2.
  The number of elements initialized in nums1 and nums2 are m and n respectively.
=end
