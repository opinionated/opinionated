Structure 
=========
This is this "top level" repo and contains scripts for setting up the opinionated project and updating code. Code should be run from this folder, and the GOPATH env var should point here. Git should not pick up any source code or executables from this repo. This also means you can download all the depenencies you want for editors and such without worrying about bloating things up. 

The code is broken into several different repos (effectively java packages). Each repo should have distinct functionality and be reused by other packages. Try to lump tightly conencted code into one package. 

Organizing the code this way makes merge conflicts less likely but increases the likelyhood of breaking someone else's code. Try not to change structs or functions used by other packages unless you need to.  

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


