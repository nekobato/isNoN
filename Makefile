MAIN = ./lib/isnon.js
COFFEE = ./node_modules/.bin/coffee
MOCHA = ./node_modules/.bin/mocha

test: build
	$(MOCHA) --compilers coffee:coffee-script/register \
		--colors --growl --bail --check-leaks test
build:
	npm install
	@test ! -e $(MAIN) || rm $(MAIN)
	$(COFFEE) -o lib -c src

.PHONY: build