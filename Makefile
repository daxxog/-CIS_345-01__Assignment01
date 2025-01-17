SHELL := /bin/bash

.PHONY: help
help:
	@printf "available targets -->\n\n"
	@cat Makefile | grep ".PHONY" | grep -v ".PHONY: _" | sed 's/.PHONY: //g'


.PHONY: zip
zip:
	mkdir -p Assign\ 01/modules
	cp ./ngapp/src/main.ts ./Assign\ 01
	cp ./ngapp/src/modules/Product.ts ./Assign\ 01/modules
	cp ./ngapp/src/modules/ProductList.ts ./Assign\ 01/modules
	tree Assign\ 01
	zip -9 -r Assign_01.zip Assign\ 01/
	shasum -a 256 Assign_01.zip
	ls -la Assign_01.zip


.PHONY: copy_zip
copy_zip: zip
	cp Assign_01.zip /vagrant
