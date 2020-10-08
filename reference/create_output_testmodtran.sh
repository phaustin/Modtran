#!/bin/bash
./mktape < input.txt > tape_output.txt
./testmodtran < tape_output.txt > out_testmodtran.txt
