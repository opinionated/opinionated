#!/bin/bash

DIR=$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


##### Functions

function smoke()
{
	go test  .../config -run TestGetNested -v
	go test  .../config -run TestMultiRead -v
	go test .../fetcher -run TestTricky -v
	go test .../fetcher -run TestSchedulableRSS -v
	go test .../fetcher -run TestSchedulableRSSMock -v
	go test .../fetcher -run MakeTestSchedulable -v
	go test .../scheduler -run TestScheduler -v
	printf  "\nSmoke test run"
}	#end of smoke
function full()
{
	go test .../Pipeline -v
	go test .../analyzer-core -v
	go test .../scheduler -v
	go test .../scraper-core -v
	go test .../utils -v
	printf  "\nFull test run"
}
function specific()
{	
	for (( i = 2; i <= $#; i++ )); do
	go test .../Pipeline -run $i -v
	go test .../analyzer-core -run $i -v
	go test .../scheduler -run $i -v
	go test .../scraper-core -run $i -v
	go test .../utils -run $i -v
	done
	printf  "\nSpecific test run"
}
##### Main
case "$1" in
    "smoke" )	
		smoke
		;;
	"full" )
		full
		;;
	"specific" )
		specific $@
		;;
    * ) echo "No test input given."
		while true; do
		read -p "Please enter what type of test you would like, or type q to quit: " q
		case $q in 
			smoke ) 
				echo ""
				smoke
				exit;;
				full )
				echo ""
				full
				exit;;
				specific* )
				specific $q
				exit;;
			[Hh] ) echo "Possible commands are:
smoke: runs smoke test
full: runs full test
specific  arg: runs specified tests 
Hh: shows commands
Qq: quits script
";;
			[Qq] ) break;;
		esac
	done
		;;
esac
