fish  = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh',  'fiiiissshhhhhh'] #=> "fiiiissshhhhhh"


def find_longest_in_quadratic(arr) #O(n^2)
    ans = arr.first
    arr.each_with_index do |el, i|
        arr[i..-1].each_with_index do |second, j|
            ans = arr[i] if arr[i].length>arr[j].length && arr[i].length>ans.length
        end
    end
    ans
end

def log_linear_longest(arr)

end

def linear_longest(arr)
    ans=arr.first
    arr.each { |ele| ans=ele if ans.length<ele.length}
    ans
end
 p linear_longest(fish)