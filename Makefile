# PATH  := node_modules/.bin:$(PATH)
SHELL := /bin/bash

.PHONY: test

test:
	cargo test

# http://stackoverflow.com/questions/28592043/what-is-wrong-with-my-string-substitution-using-sed-on-mac-os-x
# remove “ & ”
fmt_src:
	# find src -name "*.c" -type f -exec sed -i "" 's/“/\"/g' {} \;
	# find src -name "*.c" -type f -exec sed -i "" 's/”/\"/g' {} \;
	/bin/bash ./scripts/fmt_src.sh

clean: 
	/bin/bash ./scripts/clean.sh

test_with_stdout:
	cargo test -- --nocapture