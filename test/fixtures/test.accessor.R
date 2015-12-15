options( digits = 16 )
library( jsonlite )
library( VGAM )

alpha = 0.9
beta = 0.8
probs = seq( 0.1, 1, 0.01 )
y = qparetoI( probs, beta, alpha )

cat( y, sep = ",\n" )

data = list(
	alpha = alpha,
	beta = beta,
	data = probs,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/accessor.json" )
