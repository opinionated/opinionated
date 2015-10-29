TODO
=========
Check repo specific issues for more detailed / up to date TODO lists

scheduler:
* adjust scheduler timing to space tests better, look more human
* make logs and error handling  
* cleanup and documentation

fetcher/scraper:
* make sneakier scraping requests
   * send cookies along with scraper
   * look into packages to fake the browser out (maybe hook into JS, spoof ip etc)
* make rss add only newly found articles to the scheduler
* logs and error handling
* cleanup and documentation

pipeline:
* decide on final signature
   * make error channels
* make test sets
* cleanup and documentation

top level (this repo):
* tools to help with git committing without needing to navigate down
* test scripts to help with integration



Structure 
=========
This repo is the top level repo. Compile, build, run tools etc from this repo. Project code should not be in this repo. 

Each "module" ( >= 1 package) will be a file under this parent repo. Changes to the modules are invisible to this parent repo. 

You can update the modules to the master branch using the updateOpinionated script. If your local copy of that repo is not on the master branch it will not be updated (ie your current code won't get overwritten). You can always do the updates manually with git from inside each module.


Setup
=========

To clone repo: git clone https://github.com/opinionated/opinionated

The first time you clone this repo run: . setEnviroment and . setup.sh

Working with code
=========
Always run code from this level. There are a couple of scripts that may be helpful for managing the code.  

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
