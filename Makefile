COMMIT_MSG ?= "refactored project description, github actions"

add:
	   git add .

commit: add
	    git commit -m $(COMMIT_MSG)

push: commit
	     git push

check-in: push