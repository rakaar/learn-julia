using LinearAlgebra

A = rand(1:4, 3,3)
println(A)

B = A # B is pointer
C = copy(A) # C is a pointer

# vector
x = ones(3)

# matrix x vector
println(A*x)

# conjugate transponse
println(A')
# only transpose
# println(A.') # THIS IS DISCONTINUED

# transpose multiplication - no need of *
a_tranpose_a = A'A
println(a_tranpose_a)

# Solving AX = B
B = x
println(A\B)
# in case of too many solutions, it returns solution with smallest length

# LU decomposition
Z = [0 4 2; 10 2 1; 1 1 1]
# PA = LU,
l,u,p = lu(Z) 
println(l)
println(u)
println(p)

println(det(Z))

# eigen
K= [1.0 0.0 0.0; 0.0 3.0 0.0; 0.0 0.0 18.0]
F = eigen(K)
println(F)

println(F.values)
println(F.vectors)

# SVD: A = U D V'
matrix_for_svd = rand(4,3)
svd_mat = svd(matrix_for_svd)
println(svd_mat)
println(svd_mat.U)
println(svd_mat.S)
println(svd_mat.Vt)



