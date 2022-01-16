FROM docker.elastic.co/elasticsearch/elasticsearch:7.16.2

ENV elasticsearch_version=7.16.2

RUN elasticsearch-plugin install -b https://ghproxy.com/https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v${elasticsearch_version}/elasticsearch-analysis-pinyin-${elasticsearch_version}.zip
RUN elasticsearch-plugin install -b https://ghproxy.com/https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${elasticsearch_version}/elasticsearch-analysis-ik-${elasticsearch_version}.zip

COPY ./analysis-ik /usr/share/elasticsearch/config/