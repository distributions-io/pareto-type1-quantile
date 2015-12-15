'use strict';

// FUNCTIONS //

var pow = Math.pow;


// PARTIAL //

/**
* FUNCTION: partial( alpha, beta )
*	Partially applies shape parameter `alpha` and scale parameter `beta` and returns a function for evaluating the quantile function for a Pareto (Type I) distribution.
*
* @param {Number} alpha - shape parameter
* @param {Number} beta - scale parameter
* @returns {Function} quantile function
*/
function partial( alpha, beta ) {
	var alpha_inv = 1 / alpha;
	/**
	* FUNCTION: quantile( p )
	*	Evaluates the quantile function for a Pareto (Type I) distribution.
	*
	* @private
	* @param {Number} p - input value
	* @returns {Number} evaluated quantile function
	*/
	return function quantile( p ) {
		if ( p !== p || p < 0 || p > 1 ) {
			return NaN;
		}
		return beta / pow( 1 - p, alpha_inv );
	};
} // end FUNCTION partial()


// EXPORTS //

module.exports = partial;
