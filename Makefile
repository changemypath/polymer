polymerupdate:
	git submodule foreach 'git checkout master; exit 0'
	git submodule foreach 'git pull'

lint:
	polymer lint --rules=polymer-2 --root . --entrypoint index.html --entrypoint tester.html --entrypoint src/**/*.html --entrypoint test/**/*.html

npminstall:
	npm install --save redux
	npm update polymer-cli

build:
	polymer build

checkoutpolymer:
	cd ../author/scripts && ./checkoutpolymer

# https://chrisjean.com/git-submodules-adding-using-removing-and-updating/
# http://www.vogella.com/tutorials/GitSubmodules/article.html
polymerpull:
	cd ../polymer && git submodule update --remote
	cd ../polymer && git pull --recurse-submodules -j8

