# script to update all of the packages in opinionated
# called using go get

go get ...config
go get ...scheduler

go get  ...scraper-core
go get  ...scraper
go get  ...fetcher

go get  ...analyzer-core
go get  ...alchemy
go get  ...pipeline
