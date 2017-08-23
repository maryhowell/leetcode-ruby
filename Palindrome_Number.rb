# Determine whether an integer is a palindrome. Do this without extra space.

#  First attempt
# passes all but 3 cases
# def is_palindrome(x)
#     count = 1
#     if x < 0
#         return false
#     elsif
#         while x / count >= 10
#             count *= 10
#         end
#     else
#          left = x / count
#          right = x % 10
#             if left != right
#                 return false
#             else
#                 x = (x % count) / 10
#                 count /= 100
#                 return true
#             end
#         end
# end

def is_palindrome(x)
    result = x.to_s.split("")

    left = 0
    right = result.length - 1
    return true if left == right
    while left < right
        if result[left] == result[right]
            left += 1
            right -= 1
        else
            return false
        end
    end
    return true
end
