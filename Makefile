COMMIT_MSG ?= "added repository creation folders and files"

add:
	   git add .

commit: add
	    git commit -m $(COMMIT_MSG)

push: commit
	     git push

check-in: push