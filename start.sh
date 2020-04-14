#!/bin/sh

IFS='
'

if [ ! -f /usr/src/data-collector/kafka-data-collector.jar ]; then

	cd kafka-data-collector

	mvn clean package

	mv -f target/kafka-data-collector*.jar ../../kafka-data-collector.jar
	cd ../..
	rm -rf tmp 
	
fi

java -jar /usr/src/data-collector/kafka-data-collector.jar

echo "Kafka data collector started..."
