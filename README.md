Structure 
=========
This repo is the top level repo. Compile, build, run tools etc from this repo. Project code should not be in this repo. 

Each "module" ( >= 1 package) will be a file under this parent repo. Changes to the modules are invisible to this parent repo.Fetch each module (stored in its own git repo) using go get. See setup for an example of this. 


Setup
=========

To clone repo: git clone https://github.com/opinionated/opinionated

The first time you clone this repo run: .setEnviroment and . setup.sh

Working with modules
=========

####Working with a repo
1) get module using go-get (see setup for example)  
2) navigate to the module
3) create local copy of develop branch (git checkout -b develop origin/develop)   
4) create your branch off of develop (git checkout -b (your-name)-develop)  

####Pushing

1) Push your branch to the repo with git push origin (your-name)-develop  
2) Message group chat about merging  

####Once your updates get merged

1) change to develop branch (git checkout develop)  
2) pull from develop (git pull origin develop)  
3) merge develop back into your branch to get any updates (git checkout (your-name)-develop; git merge develop)  
