#!/usr/bin/env ruby

require 'json'

sets = JSON.parse(STDIN.read)['sets']
product = ARGV.first.to_i


def find_product(set, product)
	# Make this bit as efficient as possible.
	needs = []
	set.each do |number|
		return true if needs.include? number
		needs.push product - number
	end
	return false
end

sets.each do |set|
	found = find_product set, product
	puts found
end

