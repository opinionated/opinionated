Structure 
=========
This is this "top level" repo and contains scripts for setting up the opinionated project and updating code. Code should be run from this folder, and the GOPATH env var should point here. Git should not pick up any source code or executables from this repo. This also means you can download all the depenencies you want for editors and such without worrying about bloating things up. 

The code is broken into several different repos (effectively java packages). Each repo should have distinct functionality and be reused by other packages. Try to lump tightly conencted code into one package. 

Organizing the code this way makes merge conflicts less likely but increases the likelyhood of breaking someone else's code. Try not to change structs or functions used by other packages unless you need to. 

The other Opinionated repositories can be found [here](https://github.com/opinionated)

Setup
=========

To clone repo: git clone https://github.com/opinionated/opinionated

The first time you clone this repo run: . setup.sh

Working with code
=========
Always run code from this level. There are a couple of scripts that may be helpful for managing the code.  

You can build code using 'go build .../<package name>' then run it by typing <package name>.

You can run tests with 'go test .../<package name>'. Some useful test options are -run=<test name regex> to select tests and -v for standard out to be displayed even on success.

If you have any questions at all feel free to ask someone.

####scripts
updateOpinionated.sh pulls all the go repos

setup.sh sets the project folder up and clones all the go repos

setEnvironment.sh sets the environment variables for go (ie $GOPATH). You may need to run this script or append the path manually when your path gets reset (e.g. open a new terminal)

####working with branches
Work in a develop branch unless you are sure no one else is working on it.   
1) go to the repo you are working with  
2) create local copy of develop branch (git checkout -b develop origin/develop)    
3) create your branch off of develop (git checkout -b (your-name)-develop)   

####merging
1) Push your branch to the repo with git push origin (your-name)-develop  
2) Either merge yourself or message group chat about merging

Abstract
=========
Opinionated tackles the issue of biased reporting in journalism, without changing the way in which journalists write. It involves creating a service that is able to collect, score, and display news articles based on their topics and opinions. This service will allow a reader to experience multiple perspectives on an issue without effort or manual cataloging, allowing a reader to avoid heavy influence from biased journalism in one direction of the political spectrum per issue. The service collects articles, and runs them through a modularized pipeline to score them on how close their topics are aligned. These scores are based on various data obtained through tools like IBM Bluemix, Alchemy, and text analysis, and these relationships are stored in a neo-4j graph database for quick access from a desktop and mobile front-end. This service is mostly written in Go-lang, taking advantage of the language’s built-in devices for concurrency and low memory footprint, with a desktop front-end written in HTML and javascript, and both Android and iPhone applications. While journalism is ideally perfectly unbiased, in reality many sources provide a heavily skewed view, yet can still be informative. Opinionated provides a method for reading these kinds of articles, as well as unbiased ones, in a way that reduces journalistic bias.

