# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  end_idx, ranges = 0, []

  while end_idx < nums.size
    start_idx = end_idx
    end_idx += 1 while nums[end_idx] + 1 == nums[end_idx + 1]

    if start_idx == end_idx
      ranges << "#{nums[start_idx]}"
    else
      ranges << "#{nums[start_idx]}->#{nums[end_idx]}"
    end

    end_idx += 1
  end
  return ranges
end

p summary_ranges([0,1,2,4,5,7])

=begin
Given a sorted integer array without duplicates, return the summary of its ranges.
For example, given [0,1,2,4,5,7], return ["0->2","4->5","7"].
=end
