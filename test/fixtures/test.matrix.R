options( digits = 16 )
library( jsonlite )
library( VGAM )

alpha = 1
beta = 1
probs = 0:24 / 25 + 1/25
y = qparetoI( probs, beta, alpha )

cat( y, sep = ",\n" )

data = list(
	alpha = alpha,
	beta = beta,
	data = probs,
	expected = y
)


write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/matrix.json" )
