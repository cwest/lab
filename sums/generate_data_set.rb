#!/usr/bin/env ruby

require 'optparse'
require 'ostruct'
require 'json'

opts = OpenStruct.new
opts.total = 10
opts.length = 10
opts.min = -10
opts.max = 10
opts.sort = false

OptionParser.new do |opt|
	opt.on('-t', '--total TOTAL', 'Total Number of Data Sets') { |o| opts.total = o.to_i }
	opt.on('-l', '--length LENGTH', 'Length of Data Sets') { |o| opts.length = o.to_i }
	opt.on('-a', '--min MIN', 'Minimum Value for Data Point') { |o| opts.min = o.to_i }
	opt.on('-o', '--max MAX', 'Maximum Value for Data Point') { |o| opts.max = o.to_i }
	opt.on('-s', '--[no-]-sort') { |o| opts.sort = o }
end.parse!

r = Random.new
sets = []

opts.total.times do
	set = []
	opts.length.times do
		set.push r.rand(opts.min...opts.max)
	end
	set = set.sort if opts.sort
	sets.push set
end

puts JSON.generate(sets: sets)
