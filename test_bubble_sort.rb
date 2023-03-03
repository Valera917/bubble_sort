require "test/unit"
require_relative 'bubble_sort'

class TestBubbleSort < Test::Unit::TestCase
    def test_bubble_sort
        array = [5, 2, 7, 1, 9, 3]
        correct_result = [1, 2, 3, 5, 7, 9]
        assert_equal(correct_result, bubble_sort(array), 'error while sorting 6 numbers array')
    end
    def test_sorting_empty_array
        array = []
        correct_result = []
        assert_equal(correct_result, bubble_sort(array), 'error sorting empty array')
    end
    def test_sorting_one_element_array
        array = [5]
        correct_result = [5]
        assert_equal(correct_result, bubble_sort(array), 'error sorting 1 element array')
    end
    def test_sorting_reversed_sorted_array
        array = [9, 7, 5, 3, 2, 1]
        correct_result = [1, 2, 3, 5, 7, 9]
        assert_equal(correct_result, bubble_sort(array), 'error sorting reversed sorted array')
    end
    def test_sorting_array_with_repetitive_elements
        array = [2, 5, 2, 1, 8, 5, 7, 1]
        correct_result = [1, 1, 2, 2, 5, 5, 7, 8]
        assert_equal(correct_result, bubble_sort(array), 'error while sorting array with repetitive_elements')
    end
end