require_relative '../algos/substr.rb'
require_relative '../algos/sort.rb'
require 'benchmark'

include Substr
include Sort

#substring algos
string = "a" * 9999
substring = "a" * 999 + "b"

puts "\nSubstring matching algorithms\n"

Benchmark.bm do |bm|
  bm.report('naive') do
    result = Substr.naive(string, substring)
    puts " | result = #{result}"
  end
  bm.report('kmp') do
    result = Substr.kmp(string, substring)
    puts " | result = #{result}"
  end
end

num_array = []

10000.times do
  num_array << rand(100)
end

puts "\nSorting algorithms\n"

Benchmark.bm do |bm|
  #not even worth benchmarking - a fairly small n won't (on average) complete before the sun consumes its available hydrogen
  #bm.report('bogo sort') do
  #  bogosort(num_array)
  #end
  bm.report('bubble sort') do
    Sort.bubblesort(num_array.dup)
  end
  bm.report('insertion sort') do
    Sort.insertionsort(num_array.dup)
  end
  bm.report('merge sort') do
    Sort.mergesort(num_array.dup)
  end
end