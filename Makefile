JAR = target/sandbox-1.0-SNAPSHOT.jar

JAVA_FILES = $(shell find src/ -type f -name '*.java')

$JAR: $(JAVA_FILES)
	mvn package

.PHONY: clean
clean:
	rm -rf target
