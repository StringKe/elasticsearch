ARG elasticsearch_version
FROM docker.elastic.co/elasticsearch/elasticsearch:${elasticsearch_version}

RUN bin/elasticsearch-plugin install https://ghproxy.com/https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${elasticsearch_version}/elasticsearch-analysis-ik-${elasticsearch_version}.zip
