# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  m, n = matrix.size, matrix[0].size
  mnum = (0..m * n - 1).bsearch do |number|
    i, j = number.divmod(n)
    matrix[i][j] >= target
  end || 0

  i, j = mnum.divmod(n)
  return matrix[i][j] == target
end

matrix = [[ 1, 3, 5, 7],
          [10,11,16,20],
          [23,30,34,50]]
target = 3
p search_matrix(matrix, target)

=begin
Write an efficient algorithm that searches for a value in an m x n matrix.
This matrix has the following properties:
  * Integers in each row are sorted from left to right.
  * The first integer of each row is greater than the last integer of the previous row.

For example, consider the following matrix:
  [
    [1,   3,  5,  7],
    [10, 11, 16, 20],
    [23, 30, 34, 50]
  ]
  Given target = 3, return true.
=end

# Reference: https://github.com/0x01f7/leetcode/blob/master/algorithms/search_a_2d_matrix.rb
# WOW!!
