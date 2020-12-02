# FBA_LP
A function to solve the linear programming problem of Flux Balance Analysis (FBA). The function FBA_LP receive the Stoichiometric matrix, the number of the column of the Stoichiometric matrix corresponding at the objetive function, lower bounds and upper bounds.

FBA_LP(objfun,mat,lower,upper)

objfun:the number of the column of the Stoichiometric matrix corresponding at the objetive function.
mat:Stoichiometric matrix.It is recommended to upload a excel file using the read_excel function of the readxl library to avoid errors in file recognition. 
lower:numeric vector with the lower bounds in order(it means the the first lower bound in the vector correspond at lower bound of the reaction 1 and so on). 
upper:numeric vector with the upper bounds in order(it means the the first upper bound in the vector correspond at upper bound of the reaction 1 and so on). 

In both lower and upper you can upload de vector from excel using the function read_excel and this will be recognized by the function automatically. 
