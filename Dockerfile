FROM openjdk:16-alpine3.13

ENV LOGDIR="/root/startup/springboot-demo/logs"
ENV MEM_OPTS="-Xms1028m -Xmx2048m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m "
ENV JARFILE="demo-0.0.1-SNAPSHOT.jar"

WORKDIR /root/startup/

COPY target/$JARFILE .

EXPOSE 8080

CMD java -jar $MEM_OPTS $JARFILE