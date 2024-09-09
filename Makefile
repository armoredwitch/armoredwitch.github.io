index.html: index.md Makefile maketoc.bash
		cat index.html.head > index.html
		markdown -ftoc -x index.md >> index.html
		./maketoc.bash
		cat index.html.tail >> index.html
		git add index.html
		git commit -m 'Updated index'
push: 
		GIT_SSH_COMMAND="ssh -i ~/.ssh/id_armoredwitch" git push

