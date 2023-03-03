# frozen_string_literal: true

def bubble_sort(array)
    n = array.length - 1

    # Проходим по массиву, сравниваем каждую пару элементов и меняем местами, если они стоят в неправильном порядке
    loop do
        swapped = false

        n.times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end

        break unless swapped
    end

    array
end

# Пример использования:
array = [5, 2, 7, 1, 9, 3]
puts bubble_sort(array) # [1, 2, 3, 5, 7, 9]


