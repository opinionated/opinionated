# only run this script when you are setting up the repo

mkdir src
mkdir bin
mkdir pkg

# get all the repos for this project
go get github.com/opinionated/scraper-core
go get github.com/opinionated/scheduler
go get github.com/opinionated/utils
go get github.com/opinionated/analyzer-core/analyzer
go get github.com/opinionated/analyzer-core/alchemy
go get github.com/opinionated/pipeline/pipeline

# get all the dependancies
go get github.com/golang/mock/mockgen
go get github.com/golang/mock/gomock

go get golang.org/x/net/html

