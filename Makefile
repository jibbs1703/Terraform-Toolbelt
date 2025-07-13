COMMIT_MSG ?= "refactored repository creation files"

add:
	   git add .

commit: add
	    git commit -m $(COMMIT_MSG)

push: commit
	     git push

check-in: push