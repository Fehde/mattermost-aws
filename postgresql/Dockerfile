FROM --platform=linux/x86_64 postgres:14
ARG	DB_LANG=en_US  # docker-compose.ymlから上書き
RUN	localedef -i $DB_LANG -c -f UTF-8 -A /usr/share/locale/locale.alias $DB_LANG.UTF-8  # ロケール追加
ENV	LANG $DB_LANG.utf8

ADD ./postgresql/init-script/* /docker-entrypoint-initdb.d
RUN chmod 755 /docker-entrypoint-initdb.d
