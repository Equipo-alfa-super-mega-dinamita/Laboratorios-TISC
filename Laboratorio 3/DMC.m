clc
#[P(X)]
n = 2;
PX = ones( 1 , n )*(1 / n)
#[ 0.5 0.5 ]
#[P(Y|X)]
PY_X =  eye(n)

#[1 0 ; 0 1]

#[ 0.75 0.25    0         0         0; 
 #        0      0       0.33      0.67      0; 
 #        0      0       0         0         1;
  #       0      0       1         0         0]
#PY_X = eye(3)
[m,n] = size(PY_X)
#[P(Y)]     
PY = PX * PY_X


#[P(X,Y)]
PXandY = diag(PX) * PY_X


logb2 = @(x) ifelse( x > 0, log2(x), 0 );

# H(X)
HX = -sum( PX.* logb2(PX) )
# H(Y)
HY = -sum( PY.* logb2(PY) )

#H(Y|X)
HY_X =    -sum(sum(PXandY .* logb2(PY_X)))

#H(X,Y)
HXandY =  -sum(sum( PXandY .* logb2(PXandY) ))
HXandY = HY_X + HX



#I(X:Y)


IXY = HY - HY_X
IXY = HX + HY - HXandY

if ( size(PY_X) == [2 2] && issymmetric(PY_X)) 
  p = PY_X(2,1)
  Cs = 1 + p*logb2(p) + (1-p) * logb2(1-p)
endif

