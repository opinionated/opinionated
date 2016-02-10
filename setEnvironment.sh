# set the gopath to this dir

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
export GOPATH=$DIR

# set the path to include this bin
export PATH="$PATH:$GOPATH/bin"


