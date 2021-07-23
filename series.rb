=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end
# require "byebug"
require 'test/unit'
class Series
  def initialize series
    @series = series
  end

  def slices length
    raise ArgumentError if length > @series.length
    @series.each_char.each_cons(length).map &:join
  end
end
