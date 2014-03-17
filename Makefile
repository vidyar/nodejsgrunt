test:
	./node_modules/.bin/mocha -u tdd

.PHONY: test
 exec : {
        test: {
          command: "mkdir -p shippable/testresults && XUNIT_FILE=shippable/testresults/result.xml ./node_modules/mocha/bin/_mocha --timeout 5000 --reporter=xunit-file tests/node/**/*.js"

        },
