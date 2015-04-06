REPORTER = list
MOCHA_OPTS = --ui bdd -c

db:
	echo Seeding blog-test *****************************************************
	./db/seed.sh
test:
	clear

	echo Starting test *********************************************************
	./node_modules/mocha/bin/mocha \
	--reporter $(REPORTER) \
	$(MOCHA_OPTS) \
	tests/*.js
	echo Ending test
start:
	TWITTER_CONSUMER_KEY=UmxiH4ZP8YtUOp7FttSUAZn8J \
	TWITTER_CONSUMER_SECRET=JTFOEFZqWnsLlsoPafRYjM5887KQlIpnNDZ0S7AA32vsIZNhgK \
	node  app

.PHONY: test db start
