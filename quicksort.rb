#!/usr/bin/env ruby

class Array
  def quicksort
    return self if self.empty? || self.length == 1
    pivot = sample
    smaller, larger = partition { |item| item < pivot }
    smaller.quicksort + larger.quicksort
  end
end
