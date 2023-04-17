# Installation

sha512sum kafka_2.13–3.4.0.tgz

tar -xzf kafka_2.13–3.4.0.tgz
cd kafka_2.13–3.4.0

# Start the servers

bin/zookeeper-server-start.sh config/zookeeper.properties

bin/kafka-server-start.sh config/server.properties

#Create topics

bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor --partitions 1 --topic test

bin/kafka-topics.sh --list --bootstrap-server localhost:9092

# Start producers

bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic test

# Start consumers

bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning

# Clean up resources

bin/kafka-server-stop.sh
bin/zookeeper-server-stop.sh
