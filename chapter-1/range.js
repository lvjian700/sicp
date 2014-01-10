function range (from, to, step) {
	var ret = [];
	function iter (next) {
		if (next < to) {
			ret.push(next);
			iter(next + step);
		}

		return ret;
	}

	return iter(from);
}

var rg = range(0, 10, +1);
console.log(rg);
