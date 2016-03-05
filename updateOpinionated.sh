#!/bin/bash

# updates all the opinionated source code
# go get shouldn't overwrite a non-master branch,
# but I haven't tested thatgithub.com/opinionatedhis does not get
# non-go files so you may want to do a git pull
# in the specific folder 


# from utils
go get github.com/opinionated/util

# from scraper-core
go get github.com/opinionated/scraper-core

# from analyzer
go get github.com/opinionated/analyzer-core

# from scheduler
go get github.com/opinionated/scheduler

# from scrapeServer
go get github.com/opinionated/scrapeServer

# from scrapeClient
go get github.com/opinionated/scrapeClient

# articleStore
go get github.com/opinionated/articleStore
