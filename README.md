# coursera

The next place Git looks is the ~/.gitconfig (or ~/.config/git/config) file, which is specific to each user. You can make Git read and write to this file by passing the --global option.

```
[user]
	name  = jamsev@gmail.com
	email = jamserv@gmail.com

[alias]
	ad = add -A
	st = status
	cm = commit -m "r-programing"
	ph = push origin master
	ps = !sh -c 'git ad && git cm $* && git ph'
```
