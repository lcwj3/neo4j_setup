# The latest neo4j versions are not compatible with the apoc jars
# If switching, need to test compatibility
FROM neo4j:3.4.4

USER root
ENV APOC_VERSION 3.4.0.1
ENV APOC_URI https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${APOC_VERSION}/apoc-${APOC_VERSION}-all.jar

RUN wget -O plugins/apoc-${APOC_VERSION}-all.jar $APOC_URI

EXPOSE 7474 7473 7687

CMD ["neo4j"]