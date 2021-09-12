# A3A-Event user guide
## Tools
* Git interface
  * [Git bash](https://git-scm.com/downloads)
  * IDE ([Visual Studio Code](https://code.visualstudio.com/download), [Atom](https://atom.io/),... etc.)
* [Symlink creator](https://schinagl.priv.at/nt/hardlinkshellext/linkshellextension.html#download)
You can create a symlink to avoid having to copy over the files from your git folder to your missions folder with a symlink, a symlink does this by making windows think that the folder exists in two or more places, this allows the system to access these folders from more than one place.
To create a symlink all you have to do is install the tool and follow its instruction to link the git repository folder to the arma missions folder, so that you can make changes and stay up to date without having to copy files from one folder to another.


##### *Recommended interface Visual studio code*

## Navigating with git bash
to enter a folder use the `cd` command, this will try to move from your current directory to the directory specified by the path
Example: for me to navigate to this path on my computer: `C:\Users\hrr1\Documents\GitKraken\A3A-Event` which holds my A3A Event repository
i need to enter the command like this `C:\\Users\\hrr1\\Documents\\GitKraken\\A3A-Event`
take note of the added slash before every slash, this is due to special characters having special meaning, and we use the `\` to escape that meaning and treat it as normal.
this should then take us in to the directory and give us this feedback:  
![image](https://user-images.githubusercontent.com/61709767/131226531-0251001f-f601-4621-b90b-d38d6c6819d5.png)

To navigate back one directory use `cd ..` for multiple levels add `/..` for every additional level
Example: `cd ../../..` would move you up 3 directories.

## Creating a new mission
1) Open your git interface
2) first lets get the main branch with this: `git checkout main`
3) then pull any changes from git to your local branch with `git pull`
4) next branch from the main branch with this: `git branch nameOfBranchHere`
5) now we get the newely created branch like so: `git checkout nameOfBranchHere`
For more info on the checkout or branch commands use `git checkout --help` or `git branch --help` this will take you to the git wiki page for the respective command.
6) copy a fresh mission.sqm into a new mission folder in `Missions` along with a description.ext (found in `Standard Files`) and optionaly init.sqf.  
![image](https://user-images.githubusercontent.com/61709767/132096244-5f9b188a-f93a-4ddf-b55d-5a5bb0716fe7.png)
7) now create a symbolic from the files and folders inside of the `A3AEventMissionBase` folder to the missions folder in your `Missions\${yourmission}` (that folder needs the map suffix).  
![image](https://user-images.githubusercontent.com/61709767/132096258-d2463f72-35a7-43cc-bb64-dba91f604aaa.png)  
![image](https://user-images.githubusercontent.com/61709767/132096270-cd785807-fc64-4276-836b-2734fad85017.png)  
![image](https://user-images.githubusercontent.com/61709767/132096296-5b4dd530-0d8a-46b7-a125-591d075f061e.png)  
8) (first time setup only) Now make a symbolic link between the missions folder and you mpMissions folder.  
![image](https://user-images.githubusercontent.com/61709767/132096328-adf7fc6c-5674-42b2-adc6-3ee1113faad0.png)  
![image](https://user-images.githubusercontent.com/61709767/132094369-68fb4ed8-9745-44a9-8f48-10c9aa065062.png)  
![image](https://user-images.githubusercontent.com/61709767/132094397-d55e54eb-d871-4407-b578-e874cf1f3384.png)  

## Updating the base code
1) open your git interface and update the main branch using:
    `git checkout main`
    `git pull`
2) next you want to check out the branch you want to update: `git checkout nameOfBranchHere`
3) next you want to merge main into your branch: `git merge main`
Thats it, assuming you havent edited any files that was tuched in the update then it should merge the update to your mission.
if you do encounter a merge conflict though this tutorial could help [*Merge conflicts and how to resolve them*](https://www.atlassian.com/git/tutorials/using-branches/merge-conflicts)

for more info on the `merge` command use `git merge --help` this wil take you to the git wiki page for the merge command.

## Uploading your mission on github for other team members to download/edit
1) first checkout your branch
2) prep any changes for commit with `git add -A`  
(`-A` is for all changed files, you can instead add individual files by relative path if you'd like)
3) then commit with `git commit -m "message here"`
3) push your branch to the repo with: `git push -u origin nameOfBranchHere`
