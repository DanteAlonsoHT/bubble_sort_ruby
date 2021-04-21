# Define the fuction to sort an INT Array
def bubble_sort(array = [])
    array.length.times do
      arranged = true
      break unless arranged
      (array.length-1).times do |i|
        left_element, right_element = array[i], array[i + 1]
        next unless array[i] > array[i + 1]
        arranged = false
        array[i], array[i +1] = right_element, left_element
      end
    end
    array
  end
  
# Proving bubble_sort() function
array_trial_int = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  
puts "Input Int Array #{array_trial_int}"
puts "Output Int Array #{bubble_sort(array_trial_int)}"

# Define the fuction to sort an STR Array
def bubble_sort_by(array)
  (array.length - 1).times do |i|
    if (yield array[i], array[i+1]).positive?
        array[i], array[i+1] = array[i+1], array[i]
        bubble_sort_by(array) {|first, last| first.length - last.length}
    end
  end
  array
end

array_trial_str = %w[hi hello hey]
puts "Input Str Array: #{array_trial_str}"

# Proving bubble_sort_by() function
bubble_sort_by(array_trial_str) do |first, last|
  first.length - last.length
end

puts "Output Str Array: #{array_trial_str}"
