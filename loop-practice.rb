a = 1

while a <= 10
    puts a 
    a += 1
end
#prints 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

for i in 1..10 do
    puts i 
end
#also prints 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
# .. vs ... is same as <= vs <

a = 1

loop do 
    puts a 

    if a > 10
        break
    else
        a +=1
    end
end 
#also prints 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11