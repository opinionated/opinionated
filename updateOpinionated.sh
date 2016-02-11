
# updates all the opinionated source code
# go get shouldn't overwrite a non-master branch,
# but I haven't tested that. This does not get
# non-go files so you may want to do a git pull
# in the specific folder 


# from utils
go get ...config
go get ...log

# from scraper-core
go get ...scraper-core/scraper
go get ...scraper-core/net
go get ...pipeline

# from analyzer
go get ...alchemy
go get ...analyzer-core/analyzer

# from scheduler
go get ...scheduler

# from scrapeServer
go get ...scrapeServer

# from scrapeClient
go get ...scrapeClient

