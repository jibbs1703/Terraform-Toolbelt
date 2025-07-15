COMMIT_MSG ?= "Add Terraform template and GitHub Actions workflow"

add:
	   git add .

commit: add
	    git commit -m $(COMMIT_MSG)

push: commit
	     git push

check-in: push