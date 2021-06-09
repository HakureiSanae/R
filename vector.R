#向量vector
a <- c(0,1,2,3,4,5)
print(a[3])
print(a[c(1,3,5)])

#矩阵matrix
cells <- c(1,26,24,68)
rnames <- c("R1", "R2")   #行名
cnames <- c("C1", "C2")   #列名
mymatrix <- matrix(cells, nrow = 2, ncol = 2, byrow = TRUE, dimnames = list(rnames, cnames))
print(mymatrix)

#数组array
dim1 <- c("A1", "A2")
dim2 <- c("B1", "B2", "B3")
dim3 <- c("C1", "C2", "C3","C4")
z <- array(1:26, dim = c(2,3,4), dimnames = list(dim1, dim2, dim3))
print(z)

#数据框frame
patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes, status)
print(patientdata)

#因子factor
patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
diabetes <- factor(diabetes)
status <- factor(status, ordered = TRUE)
patientdata <- data.frame(patientID, age, diabetes, status)
print(str(patientdata))
summary(patientdata)

#列表list
g <- "My First List"
h <- c(25, 26, 18, 39)
j <- matrix(1:10, nrow = 5)
k <- c("one", "two", "three")
mylist <- list(title = g, ages = h, mat = j, types = k)
print(mylist)
