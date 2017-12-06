#write your code here
def ftoc number
    ((number - 32) / 1.8).round
end

def ctof number
    ((number * 1.8) + 32).round(1)
    # rounds to 100 places
end
