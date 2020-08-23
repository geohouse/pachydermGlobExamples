#!/bin/bash

# parentDir="pachydermGlobExamples"
# 
# mkdir -p $parentDir
# 
# cd $parentDir

echo "coconut" > coconut.txt
echo "macintosh" > macintosh.txt
echo "bramley" > bramley.txt
echo "cortland" > cortland.txt
echo "lemon" > lemon.txt
echo "orange" > orange.txt
echo "turnip" >  turnip.txt
echo "carrot" > carrot.txt
echo "gherkin" > gherkin.txt

pachctl create repo fruits

pachctl create repo vegetables

pachctl put file fruits@master:/coconut/coconut.txt -f coconut.txt
pachctl put file fruits@master:/apple/cooking/macintosh.txt -f macintosh.txt
pachctl put file fruits@master:/apple/cooking/bramley.txt -f bramley.txt
pachctl put file fruits@master:/apple/table/macintosh.txt -f macintosh.txt
pachctl put file fruits@master:/apple/table/cortland.txt -f cortland.txt
pachctl put file fruits@master:/citrus/orange.txt -f orange.txt
pachctl put file fruits@master:/citrus/lemon.txt -f lemon.txt

pachctl put file vegetables@master:/carrot/carrot.txt -f carrot.txt
pachctl put file vegetables@master:/turnip/turnip.txt -f turnip.txt
pachctl put file vegetables@master:/cucumber/lemon.txt -f lemon.txt
pachctl put file vegetables@master:/cucumber/gherkin.txt -f gherkin.txt

# Creates following repo structure

# fruits
# 	coconut
#		coconut.txt
#	apple
#		cooking
#			macintosh.txt
#			bramley.txt
#		table
#			macintosh.txt
#			cortland.txt
#	citrus
#		lemon.txt
#		orange.txt

# vegetables
#	carrot
#		carrot.txt
#	turnip
#		turnip.txt
#	cucumber
#		lemon.txt
#		gherkin.txt
