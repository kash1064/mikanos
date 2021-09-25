SHELL=/bin/bash

clear:
	-find ./pages/ -name *.html -exec rm {} \;
	-find ./posts/ -name *.html -exec rm {} \;
	-find ./notes/ -name *.html -exec rm {} \;

m := autopush
branch := origin master
autopush: ## This is auto push module, need commit message(default=autopush)
	git add .
	git commit -m "${m}"
	git push ${branch}
	
pull:
	git pull ${branch}

force_pull:
	git fetch ${branch}
	git reset --hard origin/master