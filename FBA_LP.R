library(Rsymphony)
FBA_LP=function(objfun,mat,lower,upper){
#CONSTRUCTION OF OBJECTIVE FUNCTION
obj=c(rep(0,objfun-1),rep(1,1),rep(0,ncol(mat)-objfun))
#CONSTRUCTION OF STOICHIOMETRIC MATRIX
mat=data.matrix(mat, rownames.force = NA)
#CONTRUCTION OF dir
dir=c('==')
i1=1
while (i1<nrow(mat)){
dir=c(dir,'==')
i1=i1+1
}
#CONSTRUCTION OF rhs
rhs=numeric(nrow(mat))
#CONSTRUCTION OF BOUNDS
####
lower=as.numeric(lower)
vallower=lower
####
upper=as.numeric(upper)
valupper=upper
#-----------------------------------
ind=c()
for (i in 1:ncol(mat)){
  ind=c(ind,i)
} 
#------------------------------------ 
bounds=list(lower=list(ind=ind,val=vallower),upper=list(ind=ind,val=valupper))
#CONSTRUCTION OF types
types=c("C")
i2=1
while (i2<ncol(mat)){
types=c(types,"C")
i2=i2+1
}
#MAXIMIZATION
max=TRUE
options(max.print = ncol(mat)+1)
Rsymphony_solve_LP(obj, mat, dir, rhs, bounds , types ,max , verbosity = -2, time_limit = -1,node_limit = -1, gap_limit = -1, first_feasible = FALSE,write_lp = FALSE, write_mps = FALSE)
}

