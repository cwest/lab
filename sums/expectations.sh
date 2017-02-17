#!/usr/bin/env bash
echo expecting 621
./sums/find_sums.rb 1987 < sums/data/larger_unsorted_data_set.json  | ag true | wc -l
#     621
echo expecting 379
./sums/find_sums.rb 1987 < sums/data/larger_unsorted_data_set.json  | ag false | wc -l
#     379
