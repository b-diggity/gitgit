# gitgit

gitgit provides an easy way to interact with some of the most popular commands used to commit code to Github.

gitgit consolidates the following commands into one easy to remember song:

`git add .`

`git commit -m "some description"`

`git push origin <branch>`

# Installation
`git clone https://github.com/b-diggity/gitgit.git`

`cd gitgit`

`sudo ./setup.sh`

Be sure to leave the repo cloned!  To update, see the udpate section:

# Update
Navigate to the cloned repo: `cd gitgit`

`git pull`

# Usage:
Commit changes on a branch:
`gitgit` --OR-- `gitgit "some description"`

Checkout a new branch:
`gitgit -b <name>`

If you are on the main/master branch with no changes, the program will exit.
If you are on the main/master branch with uncommited changes, you will have the option to swith to a new branch.  Switching to a new branch will automatically commit unless the `-b|--branch` option is present, then a new branch will be created automatically without being prompted.

Delete local branch once finished and switch back to main/master:
`gitgit -d`

Cleanup old local feature branches and prune remote branches:
`gitgit -c`

Additional commands can be run prior to add, commit and push when using gitgit by setting and exporting `GITGITCMD` with the commands that should be run.  Example: `export GITGITCMD='terraform fmt -recursive; black .`

# Setup SSH Key for Github Cloning:
On Linux System, run the following to get your key to add to github:

`if [ ! -f ~/.ssh/id_rsa ]; then ssh-keygen -t rsa -q -N '' -f ~/.ssh/id_rsa; fi; cat ~/.ssh/id_rsa.pub`

Grab the key from ~/.ssh/is_rsa.pub
Paste the key into Github -> Settings -> SSH and GPB Keys -> New SSH Key

Clone away!
