def bubble_sort(array = [])
  array.length.times do
    (array.length - 1).times do |i|
      left_element = array[i]
      right_element = array[i + 1]
      next unless array[i] > array[i + 1]

      array[i] = right_element
      array[i + 1] = left_element
    end
  end
  array
end

def bubble_sort_by(array)
  (array.length - 1).times do |i|
    if (yield array[i], array[i + 1]).positive?
      array[i], array[i + 1] = array[i + 1], array[i]
      bubble_sort_by(array) { |first, last| first.length - last.length }
    end
  end
  array
end

array_trial_str = %w[hi hello hey]

bubble_sort_by(array_trial_str) do |first, last|
  first.length - last.length
end
