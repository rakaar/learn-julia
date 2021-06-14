println("helo")

# no need of type 
x = "x"
y = 1

#=
 Multiline comments
=#

power = 10 ^ 2
println(power)

also_str = """so that u can use "this" """ #a blank character at end of sentence
println(also_str)

num = 10
println("num is $num")

# contact or typecast
new_str = string("hi ",10," u")
println(new_str)

x1 = "hi "
x2 = "you"
println(x1*x2)
println("$x1 $x2")

# dicts
me = Dict()
me["name"] = "kau"
me["age"] = 10
println(me)
println(me["age"])
# delete key
y = pop!(me, "age") # deletes key and returns value
println(y) #10
println(me)

# tuples
letters = ("a","b")
first_letter = letters[1]
println(first_letter)

# arrays
arr = ["A","B"]
println(arr)
arr[2] = "beta"
println(arr)

push!(arr, "C") # append
println(arr)

pop!(arr) # remove last element
println(arr)

# 2D arrays
array_2d = rand(3,2)
println(array_2d)

array_3d = rand(2,3,4)
println(array_3d)

# loops
loop_var = 0
while loop_var < 10
    global loop_var += 1 # note that global keyword has to be used if u want to alter a variable defined in global scope
    println(loop_var)
end

for i in 1:10
    println(i)
end

for i in arr
    println(i)
end

m, n = 5, 5
A = zeros(m,n)
for i in 1:m
    for j in 1:n
        A[i,j] = i + j
    end
end
println(A)

# doing the same above without nesting
B = zeros(m, n)
for i in 1:m, j in 1:n
    B[i,j] = i + j
end
println(B)

# Array comprehenstion
C = [i + j for i in 1:m, j in 1:n]
println(C)

# if else
if m > n
    println("$m > $n")
elseif m < n
    println("$m > $n")
else
    println("$m = $n")
end

# functions
function sayhi(name)
    println("hi $name")
end

sayhi("kau")

# define func in 1 line
square(x) = x^2
sayhelo() = println("helo")

println(square(7))
sayhelo()

# anonymus funcs
cube = x -> x^3
println(cube(3))

# duck typing
sayhi(10) # it converts 10 to '10' on its own
A = rand(2,2)
println(square(A)) # it works ^2  which is sqaure is a well defined operation for matrix
x = rand(3)
# print(square(x)) # it doesn't work for vector, because there is no operator for square of vector -> inner product or outer product?? better give error!

# mutating! vs non-mutating
v = [3,5,2]
v_sort = sort(v) 
println(v_sort)
println(v) # v remains same
sort!(v)
println(v) # v is altered


# broadcasting
#squaring matrix
println(square(A))
# squaring each element of matrix
println(square.(A))
println(square.(v))


# using package
# 1. go to julia terminal
# type using Pkg
# type Pkg.add(PACKAGE_NAME)
using Example
println(hello("kau"))

using Colors
pallete = distinguishable_colors(100)
tic_tac = rand(pallete, 3, 3) # chose elements from pallete
println(tic_tac) 

# plotting
using Plots
x = -3:0.1:3 # -3 to +3 steps of 0.1
f(x) = x^2
y = f.(x)
gr( ) # load gr backend
plot(x,y, label="line")
scatter!(x, y, label="points")

plotlyjs() # new backend
plot(x,y, label="line")
scatter!(x, y, label="points")

subplot
p1 = plot(x, x)
p2 = plot(x, x.^2)
plot(p1, p2)

multiple dispatch using a single operator for many things
Works only in REPL
println(methods(+))
println(@which 3.0 + 3.0) #float64 + float64
println(@which "helo" + "helo") # no method

# but if u want to define
+(x::String, y::String) = string(x,y)
println("helo" + "wrold")

