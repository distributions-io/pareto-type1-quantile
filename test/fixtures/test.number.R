options( digits = 16 )
library( jsonlite )
library( VGAM )

alpha = 1
beta = 4
probs = c( 0.1, 0.25, 0.5, 0.75, 1 )
y = qparetoI( probs, beta, alpha )

cat( y, sep = ",\n" )

data = list(
	alpha = alpha,
	beta = beta,
	data = probs,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/number.json" )
