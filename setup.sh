# only run this script when you are setting up the repo

. setEnvironment.sh
mkdir src
mkdir bin
mkdir pkg

# get all the core repos for this project
go get github.com/opinionated/scraper-core
go get github.com/opinionated/scheduler
go get github.com/opinionated/utils
go get github.com/opinionated/analyzer-core
go get github.com/opinionated/pipeline

# get all the runner repos for this project
go get github.com/opinionated/scrapeServer
go get github.com/opinionated/scrapeClient


# get all the dependancies
go get golang.org/x/net/html

