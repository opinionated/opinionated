#!/bin/bash

# updates all the opinionated source code
# need to git pull in your local repos

# from utils
go get github.com/opinionated/utils

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

go get github.com/opinionated/debugServer
