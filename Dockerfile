FROM elasticsearch:7.8.0

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ARG VERSION="7.8.0"

# analysis-ik
RUN elasticsearch-plugin install -b "https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${VERSION}/elasticsearch-analysis-ik-${VERSION}.zip"

# analysis-pinyin
RUN elasticsearch-plugin install -b "https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v${VERSION}/elasticsearch-analysis-pinyin-${VERSION}.zip"

# sql
RUN elasticsearch-plugin install -b "https://github.com/NLPchina/elasticsearch-sql/releases/download/${VERSION}.0/elasticsearch-sql-${VERSION}.0.zip"
