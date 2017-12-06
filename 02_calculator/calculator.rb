#write your code here
def add x , y
    x + y
end

def subtract x , y
    x - y
end

def sum array
    sum = 0
    array.each do |i|
        sum += i
    end
    sum
end


def multiply *args
    args.inject(1) { |product, n| product * n }
end

# puts multiply(5, 7,2).to_s

def factorial number
    if (number == 0 || number == 1)
        return 0
    else 

        product = 0
        minus_one = number - 1

        while minus_one > 0
            product = product * minus_one
            minus_one -= 1
        end
    end
end