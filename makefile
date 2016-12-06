word2vecServer:
	go install .../opinionated/word2vec/cmd/word-server
	word-server -model src/github.com/opinionated/pipeline/pyPipe/data/GoogleNews-vectors-negative300.bin 

fullPipe:
	go test .../opinionated/pipeline -run=Full -v
