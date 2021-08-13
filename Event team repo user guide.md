# Event team repo user guide

## Creating a new mission
### Tools
* Git interface
  * [Git bash](https://git-scm.com/downloads)
  * IDE ([Visual Studio Code](https://code.visualstudio.com/download), [Atom](https://atom.io/),... etc.)


##### *Recommended interface Visual studio code*

### Creating a new mission
1) Open your git interface
2) first lets get the main branch with this: `git checkout main`
3) next branch from the main branch with this: `git branch nameOfBranchHere`
4) now we get the newely created branch like so: `git checkout nameOfBranchHere`

For more info on the checkout or branch commands use `git checkout --help` or `git branch --help` this will take you to the git wiki page for the respective command.

### Updating the base code
1) open your git interface
2) first start of with getting your branch: `git checkout nameOfBranchHere`
3) next you want to merge main into your branch: `git merge main`
Thats it, assuming you havent edited any files that was tuched in the update then it should merge the update to your mission.

for more info on the `merge` command use `git merge --help` this wil take you to the git wiki page for the merge command.

### Uploading your mission on github for other team members to download/edit
1) first checkout your branch
2) push your branch to the repo with: `git push -u origin nameOfBranchHere`

## Easier building tips
### Symlink
#### Tools
* [Symlink creator](https://schinagl.priv.at/nt/hardlinkshellext/linkshellextension.html#download)
You can create a symlink to avoid having to copy over the files from your git folder to your missions folder with a symlink, a symlink does this by making windows think that the folder exists in two or more places, this allows the system to access these folders from more than one place.
To create a symlink all you have to do is install the tool and follow its instruction to link the git repository folder to the arma missions folder, so that you can make changes and stay up to date without having to copy files from one folder to another.
