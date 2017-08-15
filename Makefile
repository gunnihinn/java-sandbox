JAR = target/sandbox-1.0-SNAPSHOT.jar

JAVA_FILES = $(shell find src/ -type f -name '*.java')

$JAR: $(JAVA_FILES) deps
	mvn package

.PHONY: deps
deps:
	mvn dependency:copy-dependencies -DoutputDirectory=target

.PHONY: clean
clean:
	rm -rf target
