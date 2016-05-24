# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  len, cursor = 0, 0
  while cursor < nums.size
    num, have_dup = nums[cursor], false
    cursor += 1
    while nums[cursor] == num
      cursor += 1
      have_dup = true
    end
    nums[len] = num; len += 1
    next unless have_dup
    nums[len] = num; len += 1
  end
  return len
end

p remove_duplicates([1,1,1,2,2,3])

=begin
Follow up for "Remove Duplicates":
What if duplicates are allowed at most twice?
For example,
  Given sorted array nums = [1,1,1,2,2,3],
  Your function should return length = 5, with the first five elements of nums being 1, 1, 2, 2 and 3.
  It doesn't matter what you leave beyond the new length.
=end
