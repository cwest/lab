#!/usr/bin/env node

var integers = [-1,0,1,2,3,4,5,6,7];

function order(list) {
	var last_seen_even = 0;
	var last_seen_odd  = list.length - 1;
	while (last_seen_even < last_seen_odd) {
		if (list[last_seen_even] % 2 == 0) {
			last_seen_even++;
		} else {
			[list[last_seen_odd], list[last_seen_even]]
			  = [list[last_seen_even], list[last_seen_odd]]
			last_seen_odd--;
		}
	}
	return list;
}

console.log(order(integers));

