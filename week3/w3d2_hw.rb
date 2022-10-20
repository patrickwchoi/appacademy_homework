def sum_to(n)
    if n <= 0
        return nil
    elsif n == 1
        return 1
    else 
        return n + sum_to(n-1)
    end
end

def add_numbers(arr)
    if arr.length==0
        return nil
    else 
        temp = arr.pop
        return temp + add_numbers(arr).to_i
    end
end

def gamma_fnc(n)
    if n == 0
        return nil
    elsif n == 1
        return 1
    else
        return (n-1) * gamma_fnc(n-1)
    end
end

def ice_cream_shop(flavors, favorite)
    if flavors.length == 0
        return false
    elsif flavors.first == favorite
        return true
    else
        return ice_cream_shop(flavors[1...flavors.length], favorite)
    end
end
def reverse(str)
    return '' if str.length==0
    if str.length == 1
        return str
    else
        return str[-1] + reverse(str[0...(str.length-1)])
    end
end

p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""
