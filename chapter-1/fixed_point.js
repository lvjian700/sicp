var toerance = 0.000001;

function fixed_point (f, first_guess) {
	function close_enough (v1, v2) {
		var delta = Math.abs(v1 - v2);
		return delta < toerance;
	}

	function tryit (guess) {
		console.log(guess);
		var next = f(guess);

		if (close_enough(guess, next)) {
			return next;
		}

		tryit(next);
	}

	return tryit(first_guess);
}

fixed_point(function(x) {
	return Math.log(1000)/Math.log(x)	
}, 3.0);

