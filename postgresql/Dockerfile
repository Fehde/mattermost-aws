ARG POSTGRES_IMAGE_TAG

FROM postgres:${POSTGRES_IMAGE_TAG}
ARG DB_LANG=en_US  # docker-compose.ymlから上書き
RUN localedef -i $DB_LANG -c -f UTF-8 -A /usr/share/locale/locale.alias $DB_LANG.UTF-8  # ロケール追加
ENV LANG $DB_LANG.utf8

EXPOSE 5432/tcp

ADD ./postgresql/init-script/* /docker-entrypoint-initdb.d
