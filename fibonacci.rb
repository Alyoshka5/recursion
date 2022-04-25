def fibs(n)
    arr = []
    n.times do
        if arr.length == 0
            arr << 0
        elsif arr.length == 1
            arr << 1
        else
            arr << arr[-2] + arr[-1]
        end
    end
    arr
end

def fibs_rec(n, d = 0, f = 1, arr = [])
    if n == 1
        arr << d
    else
        arr << d
        d2 = d
        d = d + f
        f = d2
        return fibs_rec(n-1, d, f, arr)
    end
end

p fibs_rec(8)