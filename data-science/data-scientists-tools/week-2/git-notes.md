## Git - Creating a Github Repository.

[Correct link syntax](http://www.example.com/)

**Configure username and email**.
```
git config --global user.name "janez"
git config --global user.email "jamserv@gmail.com"
git config --list
```

**home directory**
```
cd ~
```

**Initialize a local git repository**
```
git ini
```
**add on remote repository**
```
git remote add origin http://github.com/jamserv/data-scientistic-tools.git
```

**Clone repository**
```
git clone <<URL>>
```

## Git - Basic Git Commands.

![Image of Yaktocat](https://www.stephenmarron.com/wp-content/uploads/2017/02/git.png)

**Adding**

* git add .		- add all new files
* git add -u 	- update traking for files that changue name or were deleted
* git add -A 	- does both of the previous.